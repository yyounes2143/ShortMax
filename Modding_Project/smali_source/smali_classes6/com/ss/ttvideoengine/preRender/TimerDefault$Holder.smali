.class Lcom/ss/ttvideoengine/preRender/TimerDefault$Holder;
.super Ljava/lang/Object;
.source "TimerDefault.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/preRender/TimerDefault;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final TIMER_DEFAULT:Lcom/ss/ttvideoengine/preRender/TimerDefault;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/preRender/TimerDefault;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/ss/ttvideoengine/preRender/TimerDefault;-><init>(Lcom/ss/ttvideoengine/preRender/TimerDefault$1;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/ss/ttvideoengine/preRender/TimerDefault$Holder;->TIMER_DEFAULT:Lcom/ss/ttvideoengine/preRender/TimerDefault;

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

.method static synthetic access$100()Lcom/ss/ttvideoengine/preRender/TimerDefault;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/preRender/TimerDefault$Holder;->TIMER_DEFAULT:Lcom/ss/ttvideoengine/preRender/TimerDefault;

    .line 2
    .line 3
    return-object v0
.end method
