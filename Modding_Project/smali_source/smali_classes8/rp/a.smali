.class public final Lrp/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static a:Lrp/m;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final synthetic a()Lrp/m;
    .locals 1

    .line 1
    sget-object v0, Lrp/a;->a:Lrp/m;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic b(Lrp/m;)V
    .locals 0

    .line 1
    sput-object p0, Lrp/a;->a:Lrp/m;

    .line 2
    .line 3
    return-void
.end method

.method public static final c(Lrp/m;Landroid/content/Context;)V
    .locals 1
    .param p0    # Lrp/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "context"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    sput-object p0, Lrp/a;->a:Lrp/m;

    .line 12
    .line 13
    const-class v0, Lio/bidmachine/rendering/ad/fullscreen/FullScreenActivity;

    .line 14
    .line 15
    invoke-static {p1, v0}, Ltp/e;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    const/4 p1, 0x0

    .line 24
    sput-object p1, Lrp/a;->a:Lrp/m;

    .line 25
    .line 26
    new-instance p1, Lrq/t;

    .line 27
    .line 28
    const-string v0, "Ad is null"

    .line 29
    .line 30
    invoke-direct {p1, v0}, Lrq/t;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lrp/m;->X(Lrq/t;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method
