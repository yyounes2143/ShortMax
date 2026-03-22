.class public final synthetic Lkm/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lkm/b$c;

.field public final synthetic b:Lcom/google/android/gms/ads/AdValue;


# direct methods
.method public synthetic constructor <init>(Lkm/b$c;Lcom/google/android/gms/ads/AdValue;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkm/e;->a:Lkm/b$c;

    .line 5
    .line 6
    iput-object p2, p0, Lkm/e;->b:Lcom/google/android/gms/ads/AdValue;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lkm/e;->a:Lkm/b$c;

    .line 2
    .line 3
    iget-object v1, p0, Lkm/e;->b:Lcom/google/android/gms/ads/AdValue;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkm/b$c;->a(Lkm/b$c;Lcom/google/android/gms/ads/AdValue;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
