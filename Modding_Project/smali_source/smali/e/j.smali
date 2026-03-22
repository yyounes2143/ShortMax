.class public final synthetic Le/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/ads/OnAdInspectorClosedListener;


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Le/j;->a:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAdInspectorClosed(Lcom/google/android/gms/ads/AdInspectorError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/j;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0, p1}, Le/k;->g(Landroid/content/Context;Lcom/google/android/gms/ads/AdInspectorError;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
