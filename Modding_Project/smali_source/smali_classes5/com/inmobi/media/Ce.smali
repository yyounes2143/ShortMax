.class public final Lcom/inmobi/media/Ce;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/i1;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final b(Z)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Lcom/inmobi/media/De;->a:Lcom/inmobi/media/De;

    .line 4
    .line 5
    invoke-static {p0}, Lcom/inmobi/media/De;->a(Lcom/inmobi/media/De;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Lcom/inmobi/media/De;->a()V

    .line 10
    .line 11
    .line 12
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/inmobi/media/Uc;->a(Z)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lub/m;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lub/m;-><init>(Z)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/inmobi/media/Uc;->a(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
