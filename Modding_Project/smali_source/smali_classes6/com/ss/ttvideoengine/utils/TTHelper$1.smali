.class final Lcom/ss/ttvideoengine/utils/TTHelper$1;
.super Ljava/util/HashMap;
.source "TTHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttvideoengine/utils/TTHelper;->defaultVideoResolutionMap()Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lcom/ss/ttvideoengine/Resolution;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "240p"

    .line 5
    .line 6
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->L_Standard:Lcom/ss/ttvideoengine/Resolution;

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    const-string v0, "360p"

    .line 12
    .line 13
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->Standard:Lcom/ss/ttvideoengine/Resolution;

    .line 14
    .line 15
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    const-string v0, "480p"

    .line 19
    .line 20
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->High:Lcom/ss/ttvideoengine/Resolution;

    .line 21
    .line 22
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    const-string v0, "540p"

    .line 26
    .line 27
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->H_High:Lcom/ss/ttvideoengine/Resolution;

    .line 28
    .line 29
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    const-string v0, "720p"

    .line 33
    .line 34
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->SuperHigh:Lcom/ss/ttvideoengine/Resolution;

    .line 35
    .line 36
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    const-string v0, "1080p"

    .line 40
    .line 41
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->ExtremelyHigh:Lcom/ss/ttvideoengine/Resolution;

    .line 42
    .line 43
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    const-string v0, "2k"

    .line 47
    .line 48
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->TwoK:Lcom/ss/ttvideoengine/Resolution;

    .line 49
    .line 50
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    const-string v0, "4k"

    .line 54
    .line 55
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->FourK:Lcom/ss/ttvideoengine/Resolution;

    .line 56
    .line 57
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    const-string v0, "hdr"

    .line 61
    .line 62
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->HDR:Lcom/ss/ttvideoengine/Resolution;

    .line 63
    .line 64
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    const-string v0, "1080p 50fps"

    .line 68
    .line 69
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->ExtremelyHigh_50F:Lcom/ss/ttvideoengine/Resolution;

    .line 70
    .line 71
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    const-string v0, "2k 50fps"

    .line 75
    .line 76
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->TwoK_50F:Lcom/ss/ttvideoengine/Resolution;

    .line 77
    .line 78
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    const-string v0, "4k 50fps"

    .line 82
    .line 83
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->FourK_50F:Lcom/ss/ttvideoengine/Resolution;

    .line 84
    .line 85
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    const-string v0, "1080p 60fps"

    .line 89
    .line 90
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->ExtremelyHigh_60F:Lcom/ss/ttvideoengine/Resolution;

    .line 91
    .line 92
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    const-string v0, "2k 60fps"

    .line 96
    .line 97
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->TwoK_60F:Lcom/ss/ttvideoengine/Resolution;

    .line 98
    .line 99
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    const-string v0, "4k 60fps"

    .line 103
    .line 104
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->FourK_60F:Lcom/ss/ttvideoengine/Resolution;

    .line 105
    .line 106
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    const-string v0, "1080p 120fps"

    .line 110
    .line 111
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->ExtremelyHigh_120F:Lcom/ss/ttvideoengine/Resolution;

    .line 112
    .line 113
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    const-string v0, "2k 120fps"

    .line 117
    .line 118
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->TwoK_120F:Lcom/ss/ttvideoengine/Resolution;

    .line 119
    .line 120
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    const-string v0, "4k 120fps"

    .line 124
    .line 125
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->FourK_120F:Lcom/ss/ttvideoengine/Resolution;

    .line 126
    .line 127
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    const-string v0, "240p HDR"

    .line 131
    .line 132
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->L_Standard_HDR:Lcom/ss/ttvideoengine/Resolution;

    .line 133
    .line 134
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    const-string v0, "360p HDR"

    .line 138
    .line 139
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->Standard_HDR:Lcom/ss/ttvideoengine/Resolution;

    .line 140
    .line 141
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    const-string v0, "480p HDR"

    .line 145
    .line 146
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->High_HDR:Lcom/ss/ttvideoengine/Resolution;

    .line 147
    .line 148
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    const-string v0, "540p HDR"

    .line 152
    .line 153
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->H_High_HDR:Lcom/ss/ttvideoengine/Resolution;

    .line 154
    .line 155
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    const-string v0, "720p HDR"

    .line 159
    .line 160
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->SuperHigh_HDR:Lcom/ss/ttvideoengine/Resolution;

    .line 161
    .line 162
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    const-string v0, "1080p HDR"

    .line 166
    .line 167
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->ExtremelyHigh_HDR:Lcom/ss/ttvideoengine/Resolution;

    .line 168
    .line 169
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    const-string v0, "2k HDR"

    .line 173
    .line 174
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->TwoK_HDR:Lcom/ss/ttvideoengine/Resolution;

    .line 175
    .line 176
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    const-string v0, "4k HDR"

    .line 180
    .line 181
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->FourK_HDR:Lcom/ss/ttvideoengine/Resolution;

    .line 182
    .line 183
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    const-string v0, "8k"

    .line 187
    .line 188
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->EightK:Lcom/ss/ttvideoengine/Resolution;

    .line 189
    .line 190
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    const-string v0, "1080p+"

    .line 194
    .line 195
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->ExtremelyHighPlus:Lcom/ss/ttvideoengine/Resolution;

    .line 196
    .line 197
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    return-void
.end method
