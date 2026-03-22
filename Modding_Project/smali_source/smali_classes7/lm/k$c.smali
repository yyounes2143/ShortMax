.class final Llm/k$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/OnPaidEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llm/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final a:Llm/k;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Llm/k;)V
    .locals 0
    .param p1    # Llm/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Llm/k$c;->a:Llm/k;

    return-void
.end method

.method synthetic constructor <init>(Llm/k;Llm/k$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Llm/k$c;-><init>(Llm/k;)V

    return-void
.end method

.method public static synthetic a(Llm/k$c;Lcom/google/android/gms/ads/AdValue;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Llm/k$c;->b(Lcom/google/android/gms/ads/AdValue;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic b(Lcom/google/android/gms/ads/AdValue;)V
    .locals 1

    .line 1
    iget-object v0, p0, Llm/k$c;->a:Llm/k;

    .line 2
    .line 3
    invoke-static {p1}, Llm/o;->f(Lcom/google/android/gms/ads/AdValue;)Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->F(Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onPaidEvent(Lcom/google/android/gms/ads/AdValue;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/ads/AdValue;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Llm/k$c;->a:Llm/k;

    .line 2
    .line 3
    new-instance v1, Llm/n;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Llm/n;-><init>(Llm/k$c;Lcom/google/android/gms/ads/AdValue;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Llm/k;->R(Llm/k;Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
