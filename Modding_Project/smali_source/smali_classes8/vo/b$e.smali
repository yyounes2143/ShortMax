.class final Lvo/b$e;
.super Ljava/lang/Object;
.source "BoxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvo/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# instance fields
.field private final a:J

.field private final b:J

.field private final c:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(JJLjava/lang/String;)V
    .locals 0
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lvo/b$e;->a:J

    .line 5
    .line 6
    iput-wide p3, p0, Lvo/b$e;->b:J

    .line 7
    .line 8
    iput-object p5, p0, Lvo/b$e;->c:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method static synthetic a(Lvo/b$e;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lvo/b$e;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lvo/b$e;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lvo/b$e;->a:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic c(Lvo/b$e;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lvo/b$e;->b:J

    .line 2
    .line 3
    return-wide v0
.end method
