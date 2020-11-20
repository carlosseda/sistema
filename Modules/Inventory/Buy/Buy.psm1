#!/snap/bin/pwsh

class Buy
{

    [String]$ComponentType
    [Int]$ComponentId
    [Float]$Price
    [Float]$PriceOffer
    [DateTime]$Date
    [String]$Provider
    [String]$BillImage
    [String]$BillNumber
    [Bool]$Active

    [String]getComponentType()
    {
        return $this.ComponentType
    }

    [Int]getComponentId()
    {
        return $this.ComponentId
    }

    [Float]getPrice()
    {
        return $this.Price
    }

    [Float]getPriceOffer()
    {
        return $this.PriceOffer
    }

    [DateTime]getDate()
    {
        return $this.Date
    }

    [String]getProvider()
    {
        return $this.Provider
    }

    [String]getBillImage()
    {
        return $this.BillImage
    }

    [String]getBillNumber()
    {
        return $this.BillNumber
    }

    [Bool]getActive()
    {
        return $this.Active
    }

    [String]setComponentType([String]$componentType)
    {
        $this.ComponentType = $componentType

        return $this.ComponentType
    }

    [Int]setComponentId([Int]$componentId)
    {
        $this.ComponentId = $componentId

        return $this.ComponentId
    }

    [Float]setPrice([Float]$price)
    {
        $this.Price = $price
        
        return $this.Price
    }

    [Float]setPriceOffer([Float]$priceOffer)
    {
        $this.PriceOffer = $priceOffer

        return $this.PriceOffer
    }

    [DateTime]setDate([DateTime]$date)
    {
        $this.Date = $date

        return $this.Date
    }

    [String]setProvider([String]$provider)
    {
        $this.Provider = $provider

        return $this.Provider
    }

    [String]setBillImage([String]$billImage)
    {
        $this.BillImage = $billImage

        return $this.BillImage
    }

    [String]setBillNumber([String]$billNumber)
    {
        $this.BillNumber = $billNumber

        return $this.BillNumber
    }

    [Bool]setActive([Bool]$active)
    {
        $this.Active = $active

        return $this.Active
    }
}