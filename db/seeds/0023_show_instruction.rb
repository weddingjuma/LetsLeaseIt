ShowInstruction.destroy_all
ShowInstruction.create!([
{ options: 'See Broker Remarks' },
{ options: 'Call Listing Agent' },
{ options: 'Call Listing Office' },
{ options: 'Call List Agent For Owner Phone' },
{ options: 'Call List Agent For Tenant Phone' },
{ options: 'Courtesy Key' },
{ options: 'Elect Lockbox-Call List Agent' },
{ options: 'Elect Lockbox - Call List Office' },
{ options: 'Elect Lockbox-No Appointment' },
{ options: 'Elect Lockbox - Call Owner' },
{ options: 'Key In Listing Office' },
{ options: 'List Agent Must Accompany' },
{ options: 'Lockbox-Call List Agent' },
{ options: 'Lockbox-Call List Office' },
{ options: 'Lockbox-No Appointment' },
{ options: 'Other Showing Instruction' },
{ options: 'Pets On Premises' },
{ options: 'Showing Time' }])
p "Created #{ShowInstruction.count} ShowInstruction options"
