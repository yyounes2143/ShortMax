.class Lcom/ss/ttvideoengine/strategy/utils/BufferCheckUtil$Holder;
.super Ljava/lang/Object;
.source "BufferCheckUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/strategy/utils/BufferCheckUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final instance:Lcom/ss/ttvideoengine/strategy/utils/BufferCheckUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/strategy/utils/BufferCheckUtil;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/ss/ttvideoengine/strategy/utils/BufferCheckUtil;-><init>(Lcom/ss/ttvideoengine/strategy/utils/BufferCheckUtil$1;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/ss/ttvideoengine/strategy/utils/BufferCheckUtil$Holder;->instance:Lcom/ss/ttvideoengine/strategy/utils/BufferCheckUtil;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100()Lcom/ss/ttvideoengine/strategy/utils/BufferCheckUtil;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/strategy/utils/BufferCheckUtil$Holder;->instance:Lcom/ss/ttvideoengine/strategy/utils/BufferCheckUtil;

    .line 2
    .line 3
    return-object v0
.end method
