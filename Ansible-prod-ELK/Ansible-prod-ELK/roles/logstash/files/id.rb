def filter(event)

        @serial_no = event.get('serial NO').to_s
        @hostname = event.get('hostname').to_s
        @scan_date = event.get('scan date').to_s

        @id = 'null'

        @id = @serial_no + @hostname + @scan_date

        event.set('unique_id', @id)
        return [event]

end