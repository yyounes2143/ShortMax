.class public final Lsf/b$b;
.super Ljava/lang/Object;
.source "IPushTask.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsf/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static a(Lsf/b;Ljava/lang/String;)J
    .locals 1
    .param p0    # Lsf/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string/jumbo p0, "time"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    sget-object p0, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 8
    .line 9
    sget-object v0, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;->MONTH_DAY_YEAR_HH_MM_SS:Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 10
    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/startshorts/androidplayer/utils/TimeUtil;->r(Ljava/lang/String;Lcom/startshorts/androidplayer/utils/TimeUtil$Template;)J

    .line 12
    .line 13
    .line 14
    move-result-wide p0

    .line 15
    return-wide p0
.end method
