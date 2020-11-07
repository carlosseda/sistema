#!/snap/bin/pwsh

class BackupProcess
{
    [Int]$BackupId
    [DateTime]$Start
    [DateTime]$End
    [Bool]$Success

    [DateTime]getBackupId()
    {
        return $this.BackupId
    }

    [DateTime]getStart()
    {
        return $this.Start
    }

    [DateTime]getEnd()
    {
        return $this.End
    }

    [Bool]getSuccess()
    {
        return $this.Success
    }

    [Int]setBackupId([Int]$backupId)
    {
        $this.BackupId = $backupId

        return $this.BackupId
    }

    [DateTime]setStart([DateTime]$start)
    {
        $this.Start = $start

        return $this.Start
    }

    [DateTime]setEnd([DateTime]$end)
    {
        $this.End = $end

        return $this.End
    }

    [Bool]setSuccess([Bool]$success)
    {
        $this.Success = $success

        return $this.Success
    }
}