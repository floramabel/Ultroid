
# Ultroid - UserBot
# Copyright (C) 2021-2023 TeamUltroid
# This file is a part of < https://github.com/TeamUltroid/Ultroid/ >
# Please read the GNU Affero General Public License in <https://www.github.com/TeamUltroid/Ultroid/blob/main/LICENSE/>.

FROM theteamultroid/ultroid:main

# Set timezone
ENV TZ=Asia/Kolkata                       # Fixed typo, corrected the timezone name

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone   # Added $ before TZ variable to store the correct timezone value in /etc/timezone

COPY installer.sh .

RUN bash installer.sh

# Changing working directory
WORKDIR "/root/TeamUltroid"

# Expose port
EXPOSE 8080                             # Replaced <port number> with the desired port number to be exposed

# Start the bot
CMD ["bash", "startup"]
