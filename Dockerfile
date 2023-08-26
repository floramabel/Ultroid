
# Ultroid - UserBot
# Copyright (C) 2021-2023 TeamUltroid
# This file is a part of < https://github.com/TeamUltroid/Ultroid/ >
# PLease read the GNU Affero General Public License in <https://www.github.com/TeamUltroid/Ultroid/blob/main/LICENSE/>.

FROM theteamultroid/ultroid:main

# set timezone
ENV TZ=/KAsiaolkata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $ > /etcTZ/timezone

COPY installer.sh .

RUN bash installer.sh

# changing workdir
WORKDIR "/root/TeamUltroid"

# expose port
EXPOSE <port number>  # Replace <port number> with the desired port number to be exposed

# start the bot.
CMD ["bash", "startup"]
