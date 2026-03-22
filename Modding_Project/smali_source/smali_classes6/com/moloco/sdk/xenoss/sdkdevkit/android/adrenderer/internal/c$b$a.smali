.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/c$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/c$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/c$b$a$a;
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;

.field public final synthetic b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/c;


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/c$b$a;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/c$b$a;->b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/c;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/c$b$a;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;->a()V

    :cond_0
    return-void
.end method

.method public a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;)V
    .locals 1

    const-string v0, "internalError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/c$b$a;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;->a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/a;)V
    .locals 8

    .line 1
    const-string/jumbo v0, "timeoutError"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/c$b$a;->b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/c;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/c;->getCreativeType()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/i;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 v0, -0x1

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    move p1, v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-object v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/c$b$a$a;->a:[I

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    aget p1, v1, p1

    .line 25
    .line 26
    :goto_0
    if-eq p1, v0, :cond_4

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    if-eq p1, v0, :cond_3

    .line 30
    .line 31
    const/4 v0, 0x2

    .line 32
    if-eq p1, v0, :cond_2

    .line 33
    .line 34
    const/4 v0, 0x3

    .line 35
    if-ne p1, v0, :cond_1

    .line 36
    .line 37
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/c$b$a;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;

    .line 38
    .line 39
    if-eqz p1, :cond_5

    .line 40
    .line 41
    sget-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/a;->g:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/a;

    .line 42
    .line 43
    invoke-interface {p1, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;->b(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/a;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 48
    .line 49
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :cond_2
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/c$b$a;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;

    .line 54
    .line 55
    if-eqz p1, :cond_5

    .line 56
    .line 57
    sget-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/a;->f:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/a;

    .line 58
    .line 59
    invoke-interface {p1, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;->b(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/a;)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/c$b$a;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;

    .line 64
    .line 65
    if-eqz p1, :cond_5

    .line 66
    .line 67
    sget-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/a;->e:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/a;

    .line 68
    .line 69
    invoke-interface {p1, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;->b(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/a;)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_4
    sget-object v1, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 74
    .line 75
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/c$b$a;->b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/c;

    .line 76
    .line 77
    invoke-static {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/c;->q(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/c;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    const/16 v6, 0xc

    .line 82
    .line 83
    const/4 v7, 0x0

    .line 84
    const-string v3, "creativeType is null"

    .line 85
    .line 86
    const/4 v4, 0x0

    .line 87
    const/4 v5, 0x0

    .line 88
    invoke-static/range {v1 .. v7}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    :cond_5
    :goto_1
    return-void
.end method
