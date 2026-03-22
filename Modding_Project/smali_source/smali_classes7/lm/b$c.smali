.class final Llm/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/OnPaidEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llm/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final a:Llm/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Llm/b;)V
    .locals 0
    .param p1    # Llm/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Llm/b$c;->a:Llm/b;

    return-void
.end method

.method synthetic constructor <init>(Llm/b;Llm/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Llm/b$c;-><init>(Llm/b;)V

    return-void
.end method

.method public static synthetic a(Llm/b$c;Lcom/google/android/gms/ads/AdValue;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Llm/b$c;->b(Lcom/google/android/gms/ads/AdValue;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic b(Lcom/google/android/gms/ads/AdValue;)V
    .locals 1

    .line 1
    iget-object v0, p0, Llm/b$c;->a:Llm/b;

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
    iget-object v0, p0, Llm/b$c;->a:Llm/b;

    .line 2
    .line 3
    new-instance v1, Llm/e;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Llm/e;-><init>(Llm/b$c;Lcom/google/android/gms/ads/AdValue;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Llm/b;->O(Llm/b;Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
