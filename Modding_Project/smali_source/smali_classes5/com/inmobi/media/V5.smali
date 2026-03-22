.class public abstract Lcom/inmobi/media/V5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/inmobi/media/C6;


# direct methods
.method public static final a(Lcom/inmobi/media/q3;)J
    .locals 4

    const-string v0, "crashType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/inmobi/media/V5;->a()Lcom/inmobi/media/C6;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 7
    iget-object p0, p0, Lcom/inmobi/media/q3;->b:Ljava/lang/String;

    .line 8
    const-string v3, "key"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v0, v0, Lcom/inmobi/media/C6;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    :cond_0
    return-wide v1
.end method

.method public static final a()Lcom/inmobi/media/C6;
    .locals 2

    .line 1
    sget-object v0, Lcom/inmobi/media/V5;->a:Lcom/inmobi/media/C6;

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v1, Lcom/inmobi/media/C6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "CrashSession-store"

    invoke-static {v0, v1}, Lcom/inmobi/media/B6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/C6;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    sput-object v0, Lcom/inmobi/media/V5;->a:Lcom/inmobi/media/C6;

    .line 5
    :cond_1
    sget-object v0, Lcom/inmobi/media/V5;->a:Lcom/inmobi/media/C6;

    return-object v0
.end method
