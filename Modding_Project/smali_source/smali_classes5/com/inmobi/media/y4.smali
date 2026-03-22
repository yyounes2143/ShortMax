.class public final Lcom/inmobi/media/y4;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final a:Lcom/inmobi/media/y4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/inmobi/media/y4;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/inmobi/media/y4;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/inmobi/media/y4;->a:Lcom/inmobi/media/y4;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 2
    .line 3
    sget v1, Lcom/inmobi/media/z4;->a:I

    .line 4
    .line 5
    new-instance v2, Lcom/inmobi/media/K5;

    .line 6
    .line 7
    const-string v3, "ExecutorProvider.normal"

    .line 8
    .line 9
    invoke-direct {v2, v3}, Lcom/inmobi/media/K5;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method
