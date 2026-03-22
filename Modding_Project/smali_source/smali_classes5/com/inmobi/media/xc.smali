.class public final Lcom/inmobi/media/xc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lcom/inmobi/media/uc;

.field public final b:Lcom/inmobi/media/vc;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/uc;Lcom/inmobi/media/vc;)V
    .locals 1

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/inmobi/media/xc;->a:Lcom/inmobi/media/uc;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/inmobi/media/xc;->b:Lcom/inmobi/media/vc;

    .line 12
    .line 13
    return-void
.end method

.method public static final a(Lcom/inmobi/media/xc;Lcom/inmobi/media/yc;)V
    .locals 4

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$response"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/inmobi/media/xc;->a:Lcom/inmobi/media/uc;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const-string v0, "response"

    .line 17
    .line 18
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/inmobi/media/uc;->l:Lcom/inmobi/media/M9;

    .line 22
    .line 23
    const-string v2, "request"

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lcom/inmobi/media/D4;->a(Lcom/inmobi/media/yc;)Lcom/inmobi/media/P9;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object v3, v1, Lcom/inmobi/media/M9;->a:Lcom/inmobi/media/N9;

    .line 35
    .line 36
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, v1, Lcom/inmobi/media/M9;->b:Lkotlin/jvm/internal/Lambda;

    .line 43
    .line 44
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    :cond_0
    const/4 p1, 0x0

    .line 48
    iput-object p1, p0, Lcom/inmobi/media/uc;->l:Lcom/inmobi/media/M9;

    .line 49
    .line 50
    sget-object p1, Lcom/inmobi/media/wc;->a:Ljava/util/Set;

    .line 51
    .line 52
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :try_start_0
    sget-object p1, Lcom/inmobi/media/wc;->a:Ljava/util/Set;

    .line 56
    .line 57
    invoke-interface {p1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    :catch_0
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/xc;->a:Lcom/inmobi/media/uc;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget v0, Lcom/inmobi/media/H9;->a:I

    .line 7
    .line 8
    iget-object v0, p0, Lcom/inmobi/media/xc;->a:Lcom/inmobi/media/uc;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/inmobi/media/xc;->b:Lcom/inmobi/media/vc;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/inmobi/media/H9;->a(Lcom/inmobi/media/uc;Lkotlin/jvm/functions/Function2;)Lcom/inmobi/media/yc;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, v0, Lcom/inmobi/media/yc;->a:Lcom/inmobi/media/I9;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iget-object v1, v1, Lcom/inmobi/media/I9;->a:Lcom/inmobi/media/o4;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    :goto_0
    sget-object v2, Lcom/inmobi/media/o4;->m:Lcom/inmobi/media/o4;

    .line 25
    .line 26
    if-eq v1, v2, :cond_1

    .line 27
    .line 28
    sget-object v1, Lcom/inmobi/media/z4;->d:Lms/i;

    .line 29
    .line 30
    invoke-interface {v1}, Lms/i;->getValue()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lcom/inmobi/media/o7;

    .line 35
    .line 36
    new-instance v2, Lub/l8;

    .line 37
    .line 38
    invoke-direct {v2, p0, v0}, Lub/l8;-><init>(Lcom/inmobi/media/xc;Lcom/inmobi/media/yc;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    const-string v0, "runnable"

    .line 45
    .line 46
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, v1, Lcom/inmobi/media/o7;->a:Landroid/os/Handler;

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/inmobi/media/xc;->a:Lcom/inmobi/media/uc;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    :cond_1
    return-void
.end method
