.class public final Lcom/inmobi/media/Xa;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final a:Lcom/inmobi/media/Xa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/inmobi/media/Xa;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/inmobi/media/Xa;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/inmobi/media/Xa;->a:Lcom/inmobi/media/Xa;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    sget-object v0, Lcom/inmobi/media/Ya;->a:Lcom/inmobi/media/Ya;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    sget-object v2, Lcom/inmobi/media/Ya;->c:Lcom/inmobi/media/Sa;

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    new-instance v2, Lcom/inmobi/media/Sa;

    .line 18
    .line 19
    const-string v3, "pub_signals_store"

    .line 20
    .line 21
    invoke-direct {v2, v0, v3}, Lcom/inmobi/media/Sa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sput-object v2, Lcom/inmobi/media/Ya;->c:Lcom/inmobi/media/Sa;

    .line 25
    .line 26
    :cond_0
    sget-object v0, Lcom/inmobi/media/Ya;->c:Lcom/inmobi/media/Sa;

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    const-string v0, "prefDao"

    .line 31
    .line 32
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    move-object v0, v1

    .line 36
    :cond_1
    const-string v2, "saved_signals"

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Lcom/inmobi/media/Sa;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    new-instance v1, Lorg/json/JSONObject;

    .line 45
    .line 46
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    if-nez v1, :cond_3

    .line 50
    .line 51
    new-instance v1, Lorg/json/JSONObject;

    .line 52
    .line 53
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 54
    .line 55
    .line 56
    :cond_3
    return-object v1
.end method
