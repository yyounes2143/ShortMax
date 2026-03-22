.class public final Lio/bidmachine/analytics/internal/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lio/bidmachine/analytics/internal/b;

.field private final b:Lio/bidmachine/analytics/internal/C;


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/internal/b;Lio/bidmachine/analytics/internal/C;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/analytics/internal/s;->a:Lio/bidmachine/analytics/internal/b;

    .line 5
    .line 6
    iput-object p2, p0, Lio/bidmachine/analytics/internal/s;->b:Lio/bidmachine/analytics/internal/C;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Lio/bidmachine/analytics/internal/C;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/s;->b:Lio/bidmachine/analytics/internal/C;

    return-object v0
.end method

.method public final a([B)[B
    .locals 2

    .line 2
    iget-object v0, p0, Lio/bidmachine/analytics/internal/s;->a:Lio/bidmachine/analytics/internal/b;

    iget-object v1, p0, Lio/bidmachine/analytics/internal/s;->b:Lio/bidmachine/analytics/internal/C;

    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/C;->a()Ljava/security/Key;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lio/bidmachine/analytics/internal/b;->a(Ljava/security/Key;[B)[B

    move-result-object p1

    return-object p1
.end method
