resource "aws_ebs_volume" "myvolume" {
  availability_zone = "eu-west-2a"
  size = 5
  encrypted = true
  tags = {
    Name = "Hellomyvolume"
  }
}

resource "aws_ebs_snapshot" "myvolumesnapshot" {
  volume_id = aws_ebs_volume.myvolume.id
  
  tags = {
    Name = "Hellomyvolume_snap"
  }
}

