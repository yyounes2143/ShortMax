.class public final Lio/bidmachine/analytics/internal/f0$a;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/internal/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/f0$a;->initialValue()Ljava/security/SecureRandom;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljava/security/SecureRandom;
    .locals 1

    .line 2
    sget-object v0, Lio/bidmachine/analytics/internal/f0;->a:Lio/bidmachine/analytics/internal/f0;

    invoke-static {v0}, Lio/bidmachine/analytics/internal/f0;->a(Lio/bidmachine/analytics/internal/f0;)Ljava/security/SecureRandom;

    move-result-object v0

    return-object v0
.end method
