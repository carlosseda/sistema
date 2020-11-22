#!/snap/bin/pwsh

class Place {

    [String]$Reference
    [String]$Name
    [String]$Address
    [Int]$PostalCode
    [Bool]$Active

    [String]getReference()
    {
        return $this.Reference
    }

    [String]getAddress()
    {
        return $this.Address
    }

    [Int]getPostalCode()
    {
        return $this.PostalCode
    }

    [Bool]getActive()
    {
        return $this.Active
    }

    [String]setReference([String]$reference)
    {
        $this.Reference = $reference

        return $this.Reference
    }

    [String]setAddress([String]$address)
    {
        $this.Address = $address

        return $this.Address
    }

    [Int]setPostalCode([Int]$postalCode)
    {
        $this.PostalCode = $postalCode

        return $this.PostalCode
    }

    [Bool] setActive($active)
    {
        $this.Active = $active

        return $this.Active
    }

}