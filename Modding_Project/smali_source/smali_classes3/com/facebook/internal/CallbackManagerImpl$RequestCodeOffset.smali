.class public final enum Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;
.super Ljava/lang/Enum;
.source "CallbackManagerImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/CallbackManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestCodeOffset"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

.field public static final enum AppGroupCreate:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

.field public static final enum AppGroupJoin:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

.field public static final enum AppInvite:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

.field public static final enum DeviceShare:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

.field public static final enum GameRequest:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

.field public static final enum GamingContextChoose:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

.field public static final enum GamingContextCreate:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

.field public static final enum GamingContextSwitch:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

.field public static final enum GamingFriendFinder:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

.field public static final enum GamingGroupIntegration:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

.field public static final enum Like:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

.field public static final enum Login:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

.field public static final enum Message:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

.field public static final enum Referral:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

.field public static final enum Share:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

.field public static final enum TournamentJoinDialog:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

.field public static final enum TournamentShareDialog:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;


# instance fields
.field private final offset:I


# direct methods
.method private static final synthetic $values()[Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;
    .locals 17

    .line 1
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Login:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 2
    .line 3
    sget-object v1, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Share:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 4
    .line 5
    sget-object v2, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Message:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 6
    .line 7
    sget-object v3, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Like:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 8
    .line 9
    sget-object v4, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->GameRequest:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 10
    .line 11
    sget-object v5, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->AppGroupCreate:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 12
    .line 13
    sget-object v6, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->AppGroupJoin:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 14
    .line 15
    sget-object v7, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->AppInvite:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 16
    .line 17
    sget-object v8, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->DeviceShare:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 18
    .line 19
    sget-object v9, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->GamingFriendFinder:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 20
    .line 21
    sget-object v10, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->GamingGroupIntegration:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 22
    .line 23
    sget-object v11, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Referral:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 24
    .line 25
    sget-object v12, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->GamingContextCreate:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 26
    .line 27
    sget-object v13, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->GamingContextSwitch:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 28
    .line 29
    sget-object v14, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->GamingContextChoose:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 30
    .line 31
    sget-object v15, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->TournamentShareDialog:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 32
    .line 33
    sget-object v16, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->TournamentJoinDialog:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 34
    .line 35
    filled-new-array/range {v0 .. v16}, [Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 2
    .line 3
    const-string v1, "Login"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Login:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 10
    .line 11
    new-instance v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 12
    .line 13
    const-string v1, "Share"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Share:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 20
    .line 21
    new-instance v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 22
    .line 23
    const-string v1, "Message"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v2}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Message:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 30
    .line 31
    new-instance v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 32
    .line 33
    const-string v1, "Like"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2, v2}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Like:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 40
    .line 41
    new-instance v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 42
    .line 43
    const-string v1, "GameRequest"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2, v2}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->GameRequest:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 50
    .line 51
    new-instance v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 52
    .line 53
    const-string v1, "AppGroupCreate"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2, v2}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;-><init>(Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->AppGroupCreate:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 60
    .line 61
    new-instance v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 62
    .line 63
    const-string v1, "AppGroupJoin"

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-direct {v0, v1, v2, v2}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;-><init>(Ljava/lang/String;II)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->AppGroupJoin:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 70
    .line 71
    new-instance v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 72
    .line 73
    const-string v1, "AppInvite"

    .line 74
    .line 75
    const/4 v2, 0x7

    .line 76
    invoke-direct {v0, v1, v2, v2}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;-><init>(Ljava/lang/String;II)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->AppInvite:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 80
    .line 81
    new-instance v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 82
    .line 83
    const-string v1, "DeviceShare"

    .line 84
    .line 85
    const/16 v2, 0x8

    .line 86
    .line 87
    invoke-direct {v0, v1, v2, v2}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;-><init>(Ljava/lang/String;II)V

    .line 88
    .line 89
    .line 90
    sput-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->DeviceShare:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 91
    .line 92
    new-instance v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 93
    .line 94
    const-string v1, "GamingFriendFinder"

    .line 95
    .line 96
    const/16 v2, 0x9

    .line 97
    .line 98
    invoke-direct {v0, v1, v2, v2}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;-><init>(Ljava/lang/String;II)V

    .line 99
    .line 100
    .line 101
    sput-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->GamingFriendFinder:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 102
    .line 103
    new-instance v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 104
    .line 105
    const-string v1, "GamingGroupIntegration"

    .line 106
    .line 107
    const/16 v2, 0xa

    .line 108
    .line 109
    invoke-direct {v0, v1, v2, v2}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;-><init>(Ljava/lang/String;II)V

    .line 110
    .line 111
    .line 112
    sput-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->GamingGroupIntegration:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 113
    .line 114
    new-instance v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 115
    .line 116
    const-string v1, "Referral"

    .line 117
    .line 118
    const/16 v2, 0xb

    .line 119
    .line 120
    invoke-direct {v0, v1, v2, v2}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;-><init>(Ljava/lang/String;II)V

    .line 121
    .line 122
    .line 123
    sput-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Referral:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 124
    .line 125
    new-instance v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 126
    .line 127
    const-string v1, "GamingContextCreate"

    .line 128
    .line 129
    const/16 v2, 0xc

    .line 130
    .line 131
    invoke-direct {v0, v1, v2, v2}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;-><init>(Ljava/lang/String;II)V

    .line 132
    .line 133
    .line 134
    sput-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->GamingContextCreate:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 135
    .line 136
    new-instance v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 137
    .line 138
    const-string v1, "GamingContextSwitch"

    .line 139
    .line 140
    const/16 v2, 0xd

    .line 141
    .line 142
    invoke-direct {v0, v1, v2, v2}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;-><init>(Ljava/lang/String;II)V

    .line 143
    .line 144
    .line 145
    sput-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->GamingContextSwitch:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 146
    .line 147
    new-instance v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 148
    .line 149
    const-string v1, "GamingContextChoose"

    .line 150
    .line 151
    const/16 v2, 0xe

    .line 152
    .line 153
    invoke-direct {v0, v1, v2, v2}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;-><init>(Ljava/lang/String;II)V

    .line 154
    .line 155
    .line 156
    sput-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->GamingContextChoose:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 157
    .line 158
    new-instance v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 159
    .line 160
    const-string v1, "TournamentShareDialog"

    .line 161
    .line 162
    const/16 v2, 0xf

    .line 163
    .line 164
    invoke-direct {v0, v1, v2, v2}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;-><init>(Ljava/lang/String;II)V

    .line 165
    .line 166
    .line 167
    sput-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->TournamentShareDialog:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 168
    .line 169
    new-instance v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 170
    .line 171
    const-string v1, "TournamentJoinDialog"

    .line 172
    .line 173
    const/16 v2, 0x10

    .line 174
    .line 175
    invoke-direct {v0, v1, v2, v2}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;-><init>(Ljava/lang/String;II)V

    .line 176
    .line 177
    .line 178
    sput-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->TournamentJoinDialog:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 179
    .line 180
    invoke-static {}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->$values()[Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    sput-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->$VALUES:[Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 185
    .line 186
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->offset:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;
    .locals 1

    .line 1
    const-class v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->$VALUES:[Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final toRequestCode()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/facebook/v;->r()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->offset:I

    .line 6
    .line 7
    add-int/2addr v0, v1

    .line 8
    return v0
.end method
