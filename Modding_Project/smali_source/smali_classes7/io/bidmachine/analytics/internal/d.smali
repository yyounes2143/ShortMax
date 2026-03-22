.class public abstract Lio/bidmachine/analytics/internal/d;
.super Lio/bidmachine/analytics/internal/i;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/i;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic a(Lio/bidmachine/analytics/internal/d;Lio/bidmachine/analytics/ReaderConfig$Rule;Lrs/c;)Ljava/lang/Object;
    .locals 2

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/analytics/internal/d;->a(Lio/bidmachine/analytics/ReaderConfig$Rule;)Ljava/io/File;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p2, 0x5f

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-direct {p0}, Ljava/io/FileNotFoundException;-><init>()V

    throw p0
.end method


# virtual methods
.method public abstract a(Lio/bidmachine/analytics/ReaderConfig$Rule;)Ljava/io/File;
.end method

.method public a(Lio/bidmachine/analytics/ReaderConfig$Rule;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lio/bidmachine/analytics/internal/d;->a(Lio/bidmachine/analytics/internal/d;Lio/bidmachine/analytics/ReaderConfig$Rule;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
