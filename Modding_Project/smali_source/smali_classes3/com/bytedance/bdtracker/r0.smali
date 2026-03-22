.class public final Lcom/bytedance/bdtracker/r0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lcom/bytedance/applog/exposure/ViewExposureData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/bytedance/applog/exposure/ViewExposureData;ZI)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    const-string p3, "data"

    .line 7
    .line 8
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/bytedance/bdtracker/r0;->a:Lcom/bytedance/applog/exposure/ViewExposureData;

    .line 15
    .line 16
    iput-boolean p2, p0, Lcom/bytedance/bdtracker/r0;->b:Z

    .line 17
    .line 18
    return-void
.end method
