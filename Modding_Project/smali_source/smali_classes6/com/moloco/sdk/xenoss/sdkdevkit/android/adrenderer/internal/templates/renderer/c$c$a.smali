.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/c$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkt/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/c$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkt/c;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/c;


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/c$c$a;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(ZLrs/c;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 2
    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "Content loaded event received, isSuccess: "

    .line 9
    .line 10
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const/16 v5, 0xc

    .line 21
    .line 22
    const/4 v6, 0x0

    .line 23
    const-string v1, "TemplateWebViewClientImpl"

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    const/4 v4, 0x0

    .line 27
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object p2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/c$c$a;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/c;

    .line 31
    .line 32
    invoke-static {p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/c;->y(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/c;)Lkt/e;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-interface {p2, v0}, Lkt/e;->setValue(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iget-object p2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/c$c$a;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/c;

    .line 44
    .line 45
    invoke-static {p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/c;->o(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/c;)Lkotlinx/coroutines/r;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    if-eqz p2, :cond_0

    .line 50
    .line 51
    const/4 v0, 0x1

    .line 52
    const/4 v1, 0x0

    .line 53
    invoke-static {p2, v1, v0, v1}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    iget-object p2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/c$c$a;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/c;

    .line 57
    .line 58
    invoke-static {p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/c;->j(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/c;)Lcom/moloco/sdk/acm/recorder/a;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    new-instance v0, Lcom/moloco/sdk/acm/b;

    .line 63
    .line 64
    sget-object v1, Lcom/moloco/sdk/internal/client_metrics_data/a;->L:Lcom/moloco/sdk/internal/client_metrics_data/a;

    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/client_metrics_data/a;->c()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-direct {v0, v1}, Lcom/moloco/sdk/acm/b;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    sget-object v1, Lcom/moloco/sdk/internal/client_metrics_data/c;->d:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    const-string v3, "failure"

    .line 80
    .line 81
    const-string/jumbo v4, "success"

    .line 82
    .line 83
    .line 84
    if-eqz p1, :cond_1

    .line 85
    .line 86
    move-object v5, v4

    .line 87
    goto :goto_0

    .line 88
    :cond_1
    move-object v5, v3

    .line 89
    :goto_0
    invoke-virtual {v0, v2, v5}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-interface {p2, v0}, Lcom/moloco/sdk/acm/recorder/a;->b(Lcom/moloco/sdk/acm/b;)V

    .line 94
    .line 95
    .line 96
    iget-object p2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/c$c$a;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/c;

    .line 97
    .line 98
    invoke-static {p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/c;->t(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/c;)Lcom/moloco/sdk/acm/e;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    if-eqz p2, :cond_3

    .line 103
    .line 104
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/c$c$a;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/c;

    .line 105
    .line 106
    invoke-static {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/c;->j(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/c;)Lcom/moloco/sdk/acm/recorder/a;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    if-eqz p1, :cond_2

    .line 115
    .line 116
    move-object v3, v4

    .line 117
    :cond_2
    invoke-virtual {p2, v1, v3}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-interface {v0, p1}, Lcom/moloco/sdk/acm/recorder/a;->a(Lcom/moloco/sdk/acm/e;)V

    .line 122
    .line 123
    .line 124
    :cond_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 125
    .line 126
    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/c$c$a;->a(ZLrs/c;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
