.class final Lv7/x0;
.super Lv7/t0;
.source "com.google.firebase:firebase-auth@@24.0.1"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lv7/t0;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lv7/t0;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lv7/x0;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final b()Lv7/u0;
    .locals 5

    .line 1
    new-instance v0, Lv7/y0;

    .line 2
    .line 3
    iget-object v1, p0, Lv7/x0;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lv7/x0;->b:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lv7/x0;->c:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-direct {v0, v1, v2, v3, v4}, Lv7/y0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lv7/a1;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final c(Ljava/lang/String;)Lv7/t0;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lv7/x0;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lv7/t0;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lv7/x0;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
