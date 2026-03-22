.class public final Lio/bidmachine/analytics/internal/L;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Ljava/lang/StringBuffer;

.field private c:Ljava/lang/Long;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lio/bidmachine/analytics/internal/L;->a:I

    .line 5
    .line 6
    new-instance p2, Ljava/lang/StringBuffer;

    .line 7
    .line 8
    invoke-direct {p2, p1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lio/bidmachine/analytics/internal/L;->b:Ljava/lang/StringBuffer;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/L;->c:Ljava/lang/Long;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lio/bidmachine/analytics/internal/L;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lio/bidmachine/analytics/internal/L;->a:I

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lio/bidmachine/analytics/internal/L;->b:Ljava/lang/StringBuffer;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    const/16 v0, 0xa

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/analytics/internal/L;->c:Ljava/lang/Long;

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/L;->b:Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
