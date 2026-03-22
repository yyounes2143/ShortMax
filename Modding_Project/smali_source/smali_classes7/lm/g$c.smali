.class final Llm/g$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/OnPaidEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llm/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final a:Llm/g;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Llm/g;)V
    .locals 0
    .param p1    # Llm/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Llm/g$c;->a:Llm/g;

    return-void
.end method

.method synthetic constructor <init>(Llm/g;Llm/g$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Llm/g$c;-><init>(Llm/g;)V

    return-void
.end method

.method public static synthetic a(Llm/g$c;Lcom/google/android/gms/ads/AdValue;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Llm/g$c;->b(Lcom/google/android/gms/ads/AdValue;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic b(Lcom/google/android/gms/ads/AdValue;)V
    .locals 1

    .line 1
    iget-object v0, p0, Llm/g$c;->a:Llm/g;

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
    iget-object v0, p0, Llm/g$c;->a:Llm/g;

    .line 2
    .line 3
    new-instance v1, Llm/j;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Llm/j;-><init>(Llm/g$c;Lcom/google/android/gms/ads/AdValue;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Llm/g;->R(Llm/g;Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
