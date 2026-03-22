.class public final Lcom/inmobi/media/P6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "parcel"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v8, Lcom/inmobi/media/R6;

    .line 9
    .line 10
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance v3, Lcom/inmobi/media/S6;

    .line 14
    .line 15
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 16
    .line 17
    .line 18
    move-result-wide v10

    .line 19
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, ""

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    move-object v12, v2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object v12, v1

    .line 30
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    move-object v13, v2

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move-object v13, v1

    .line 39
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-nez v1, :cond_2

    .line 44
    .line 45
    move-object v14, v2

    .line 46
    goto :goto_2

    .line 47
    :cond_2
    move-object v14, v1

    .line 48
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    if-nez v1, :cond_3

    .line 53
    .line 54
    move-object v15, v2

    .line 55
    goto :goto_3

    .line 56
    :cond_3
    move-object v15, v1

    .line 57
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    if-nez v1, :cond_4

    .line 62
    .line 63
    move-object/from16 v16, v2

    .line 64
    .line 65
    goto :goto_4

    .line 66
    :cond_4
    move-object/from16 v16, v1

    .line 67
    .line 68
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    if-nez v1, :cond_5

    .line 73
    .line 74
    move-object/from16 v17, v2

    .line 75
    .line 76
    goto :goto_5

    .line 77
    :cond_5
    move-object/from16 v17, v1

    .line 78
    .line 79
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_6

    .line 84
    .line 85
    const/4 v1, 0x1

    .line 86
    :goto_6
    move/from16 v18, v1

    .line 87
    .line 88
    goto :goto_7

    .line 89
    :cond_6
    const/4 v1, 0x0

    .line 90
    goto :goto_6

    .line 91
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    if-nez v1, :cond_7

    .line 96
    .line 97
    move-object/from16 v19, v2

    .line 98
    .line 99
    goto :goto_8

    .line 100
    :cond_7
    move-object/from16 v19, v1

    .line 101
    .line 102
    :goto_8
    move-object v9, v3

    .line 103
    invoke-direct/range {v9 .. v19}, Lcom/inmobi/media/S6;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    if-nez v1, :cond_8

    .line 111
    .line 112
    move-object v4, v2

    .line 113
    goto :goto_9

    .line 114
    :cond_8
    move-object v4, v1

    .line 115
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 120
    .line 121
    .line 122
    move-result-wide v6

    .line 123
    move-object v2, v8

    .line 124
    invoke-direct/range {v2 .. v7}, Lcom/inmobi/media/R6;-><init>(Lcom/inmobi/media/S6;Ljava/lang/String;IJ)V

    .line 125
    .line 126
    .line 127
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    iput v1, v8, Lcom/inmobi/media/R6;->f:I

    .line 132
    .line 133
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    iput-object v0, v8, Lcom/inmobi/media/R6;->g:Ljava/lang/String;

    .line 138
    .line 139
    return-object v8
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/inmobi/media/R6;

    .line 2
    .line 3
    return-object p1
.end method
