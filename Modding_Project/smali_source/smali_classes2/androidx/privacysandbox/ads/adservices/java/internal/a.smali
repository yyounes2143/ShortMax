.class public final synthetic Landroidx/privacysandbox/ads/adservices/java/internal/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic a:Lgt/k0;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lgt/k0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/privacysandbox/ads/adservices/java/internal/a;->a:Lgt/k0;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/privacysandbox/ads/adservices/java/internal/a;->b:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/java/internal/a;->a:Lgt/k0;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/java/internal/a;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Landroidx/privacysandbox/ads/adservices/java/internal/CoroutineAdapterKt;->a(Lgt/k0;Ljava/lang/Object;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
