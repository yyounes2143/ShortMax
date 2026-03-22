.class public final synthetic Le/s;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;


# instance fields
.field public final synthetic a:Le/t;


# direct methods
.method public synthetic constructor <init>(Le/t;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Le/s;->a:Le/t;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onInitializationComplete(Lcom/google/android/gms/ads/initialization/InitializationStatus;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/s;->a:Le/t;

    .line 2
    .line 3
    invoke-static {v0, p1}, Le/t;->Y(Le/t;Lcom/google/android/gms/ads/initialization/InitializationStatus;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
