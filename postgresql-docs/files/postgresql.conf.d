# PostgreSQL's Database Directory
PGDATA="/var/lib/pgsql/data"

# PostgreSQL User
PGUSER="pgsql"

# PostgreSQL Group
PGGROUP="pgsql"

# Extra options to run postmaster with
# -N is the maximal number of client connections
# -B is the number of shared buffers and has to be at least 2x the value for -N
# Please read the man-page to postmaster for more options. Many of these options
# can be set directly in the configuration-file.
PGOPTS="-N 40 -B 80"


# SERVER SHUTDOWN:
# The server will receive 3 signals in the worst case:
# 1. SIGTERM
#  This signals the server to ignore new connections and to
#  wait for all clients to end their transactions before shutting down.
#  Use WAIT_FOR_DISCONNECT to control how much time the clients
#  should have until the next signal is being sent.
# 2. SIGINT
#  Tell the server to forcefully disconnect all clients.
#  Terminating a client results in a rollback of the open transactions for this client.
#  Use WAIT_FOR_CLEANUP to determine how much time the server has
#  for cleanup. (Set it to "forever" if you want to wait forever.)
# 3. SIGQUIT
#  This will terminate the server immediately and results in a recovery run for the next start.

# Wait for clients to disconnect (seconds or "forever")
WAIT_FOR_DISCONNECT=10

# Time the server has to clean up (seconds or "forever")
WAIT_FOR_CLEANUP=10

# If you have to export environment variables for the database process,
# this can be done here.
# Example:
#   export R_HOME="/usr/lib/R"
