.class public final Lcom/inmobi/ads/AudioStatus$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/AudioStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/inmobi/ads/AudioStatus$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public from(I)Lcom/inmobi/ads/AudioStatus;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 2
    sget-object p1, Lcom/inmobi/ads/AudioStatus;->COMPLETED:Lcom/inmobi/ads/AudioStatus;

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Lcom/inmobi/ads/AudioStatus;->PAUSED:Lcom/inmobi/ads/AudioStatus;

    goto :goto_0

    .line 4
    :cond_1
    sget-object p1, Lcom/inmobi/ads/AudioStatus;->PLAYING:Lcom/inmobi/ads/AudioStatus;

    :goto_0
    return-object p1
.end method

.method public bridge synthetic from(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/inmobi/ads/AudioStatus$Companion;->from(I)Lcom/inmobi/ads/AudioStatus;

    move-result-object p1

    return-object p1
.end method

.method public to(Lcom/inmobi/ads/AudioStatus;)Ljava/lang/Integer;
    .locals 1
    .param p1    # Lcom/inmobi/ads/AudioStatus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic to(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/inmobi/ads/AudioStatus;

    invoke-virtual {p0, p1}, Lcom/inmobi/ads/AudioStatus$Companion;->to(Lcom/inmobi/ads/AudioStatus;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
