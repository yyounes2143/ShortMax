.class public final synthetic Le/j0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/ads/OnPaidEventListener;


# instance fields
.field public final synthetic a:Le/k0;

.field public final synthetic b:Lca/d;

.field public final synthetic c:Lca/f;


# direct methods
.method public synthetic constructor <init>(Le/k0;Lca/d;Lca/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Le/j0;->a:Le/k0;

    .line 5
    .line 6
    iput-object p2, p0, Le/j0;->b:Lca/d;

    .line 7
    .line 8
    iput-object p3, p0, Le/j0;->c:Lca/f;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onPaidEvent(Lcom/google/android/gms/ads/AdValue;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/j0;->a:Le/k0;

    .line 2
    .line 3
    iget-object v1, p0, Le/j0;->b:Lca/d;

    .line 4
    .line 5
    iget-object v2, p0, Le/j0;->c:Lca/f;

    .line 6
    .line 7
    invoke-static {v0, v1, v2, p1}, Le/k0;->j(Le/k0;Lca/d;Lca/f;Lcom/google/android/gms/ads/AdValue;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
