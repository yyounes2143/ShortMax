.class Lcom/ss/ttvideoengine/net/ChannelSelect$Channel;
.super Ljava/lang/Object;
.source "ChannelSelect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/net/ChannelSelect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Channel"
.end annotation


# instance fields
.field private final mApiVersion:I

.field private final mHost:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/ss/ttvideoengine/net/ChannelSelect$Channel;->mApiVersion:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/ss/ttvideoengine/net/ChannelSelect$Channel;->mHost:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method static synthetic access$000(Lcom/ss/ttvideoengine/net/ChannelSelect$Channel;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/net/ChannelSelect$Channel;->mHost:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/ss/ttvideoengine/net/ChannelSelect$Channel;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/ttvideoengine/net/ChannelSelect$Channel;->mApiVersion:I

    .line 2
    .line 3
    return p0
.end method
