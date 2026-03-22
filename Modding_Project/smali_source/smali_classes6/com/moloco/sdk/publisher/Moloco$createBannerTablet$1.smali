.class final Lcom/moloco/sdk/publisher/Moloco$createBannerTablet$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/publisher/Moloco;->createBannerTablet(Lcom/moloco/sdk/publisher/MediationInfo;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lgt/g0;",
        "Lrs/c<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.moloco.sdk.publisher.Moloco$createBannerTablet$1"
    f = "Moloco.kt"
    l = {
        0xec
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $adUnitId:Ljava/lang/String;

.field final synthetic $callback:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/moloco/sdk/publisher/Banner;",
            "Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $mediationInfo:Lcom/moloco/sdk/publisher/MediationInfo;

.field final synthetic $watermarkString:Ljava/lang/String;

.field label:I


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/publisher/MediationInfo;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/publisher/MediationInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/moloco/sdk/publisher/Banner;",
            "-",
            "Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;",
            "Lkotlin/Unit;",
            ">;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/publisher/Moloco$createBannerTablet$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/publisher/Moloco$createBannerTablet$1;->$mediationInfo:Lcom/moloco/sdk/publisher/MediationInfo;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/publisher/Moloco$createBannerTablet$1;->$adUnitId:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/moloco/sdk/publisher/Moloco$createBannerTablet$1;->$watermarkString:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/moloco/sdk/publisher/Moloco$createBannerTablet$1;->$callback:Lkotlin/jvm/functions/Function2;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lrs/c<",
            "*>;)",
            "Lrs/c<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/moloco/sdk/publisher/Moloco$createBannerTablet$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/moloco/sdk/publisher/Moloco$createBannerTablet$1;->$mediationInfo:Lcom/moloco/sdk/publisher/MediationInfo;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/moloco/sdk/publisher/Moloco$createBannerTablet$1;->$adUnitId:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/moloco/sdk/publisher/Moloco$createBannerTablet$1;->$watermarkString:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/moloco/sdk/publisher/Moloco$createBannerTablet$1;->$callback:Lkotlin/jvm/functions/Function2;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/moloco/sdk/publisher/Moloco$createBannerTablet$1;-><init>(Lcom/moloco/sdk/publisher/MediationInfo;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lrs/c;)V

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public final invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/publisher/Moloco$createBannerTablet$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/moloco/sdk/publisher/Moloco$createBannerTablet$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/moloco/sdk/publisher/Moloco$createBannerTablet$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/publisher/Moloco$createBannerTablet$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/moloco/sdk/publisher/Moloco$createBannerTablet$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    sget-object p1, Lcom/moloco/sdk/acm/recorder/a;->Companion:Lcom/moloco/sdk/acm/recorder/a$a;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/moloco/sdk/publisher/Moloco$createBannerTablet$1;->$mediationInfo:Lcom/moloco/sdk/publisher/MediationInfo;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/moloco/sdk/publisher/MediationInfo;->getName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p1, v1}, Lcom/moloco/sdk/acm/recorder/a$a;->a(Ljava/lang/String;)Lcom/moloco/sdk/acm/recorder/a;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    sget-object p1, Lcom/moloco/sdk/publisher/Moloco;->INSTANCE:Lcom/moloco/sdk/publisher/Moloco;

    .line 40
    .line 41
    invoke-static {p1}, Lcom/moloco/sdk/publisher/Moloco;->access$getAdCreator(Lcom/moloco/sdk/publisher/Moloco;)Lcom/moloco/sdk/internal/publisher/b;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    iget-object p1, p0, Lcom/moloco/sdk/publisher/Moloco$createBannerTablet$1;->$mediationInfo:Lcom/moloco/sdk/publisher/MediationInfo;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/moloco/sdk/publisher/MediationInfo;->getName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    iget-object v5, p0, Lcom/moloco/sdk/publisher/Moloco$createBannerTablet$1;->$adUnitId:Ljava/lang/String;

    .line 52
    .line 53
    iget-object v7, p0, Lcom/moloco/sdk/publisher/Moloco$createBannerTablet$1;->$watermarkString:Ljava/lang/String;

    .line 54
    .line 55
    iput v2, p0, Lcom/moloco/sdk/publisher/Moloco$createBannerTablet$1;->label:I

    .line 56
    .line 57
    move-object v8, p0

    .line 58
    invoke-virtual/range {v3 .. v8}, Lcom/moloco/sdk/internal/publisher/b;->i(Ljava/lang/String;Ljava/lang/String;Lcom/moloco/sdk/acm/recorder/a;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-ne p1, v0, :cond_2

    .line 63
    .line 64
    return-object v0

    .line 65
    :cond_2
    :goto_0
    check-cast p1, Lcom/moloco/sdk/internal/g0;

    .line 66
    .line 67
    instance-of v0, p1, Lcom/moloco/sdk/internal/g0$b;

    .line 68
    .line 69
    const/4 v1, 0x0

    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    check-cast p1, Lcom/moloco/sdk/internal/g0$b;

    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/g0$b;->a()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-static {p1, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    goto :goto_1

    .line 83
    :cond_3
    instance-of v0, p1, Lcom/moloco/sdk/internal/g0$a;

    .line 84
    .line 85
    if-eqz v0, :cond_5

    .line 86
    .line 87
    check-cast p1, Lcom/moloco/sdk/internal/g0$a;

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/g0$a;->a()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-static {v1, p1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    :goto_1
    invoke-virtual {p1}, Lkotlin/Pair;->b()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Lcom/moloco/sdk/publisher/Banner;

    .line 102
    .line 103
    invoke-virtual {p1}, Lkotlin/Pair;->d()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    check-cast p1, Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;

    .line 108
    .line 109
    sget-object v3, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 110
    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    const-string v4, "Banner for adUnitId: "

    .line 117
    .line 118
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget-object v4, p0, Lcom/moloco/sdk/publisher/Moloco$createBannerTablet$1;->$adUnitId:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v4, " has error: "

    .line 127
    .line 128
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    if-nez v0, :cond_4

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_4
    const/4 v2, 0x0

    .line 135
    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    const/16 v8, 0xc

    .line 143
    .line 144
    const/4 v9, 0x0

    .line 145
    const-string v4, "Moloco"

    .line 146
    .line 147
    const/4 v6, 0x0

    .line 148
    const/4 v7, 0x0

    .line 149
    invoke-static/range {v3 .. v9}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    iget-object v1, p0, Lcom/moloco/sdk/publisher/Moloco$createBannerTablet$1;->$callback:Lkotlin/jvm/functions/Function2;

    .line 153
    .line 154
    invoke-interface {v1, v0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 158
    .line 159
    return-object p1

    .line 160
    :cond_5
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 161
    .line 162
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 163
    .line 164
    .line 165
    throw p1
.end method
