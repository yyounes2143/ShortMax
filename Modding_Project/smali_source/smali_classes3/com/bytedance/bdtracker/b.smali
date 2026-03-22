.class public final Lcom/bytedance/bdtracker/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/bdtracker/b$f;,
        Lcom/bytedance/bdtracker/b$d;,
        Lcom/bytedance/bdtracker/b$e;
    }
.end annotation


# static fields
.field public static a:Lcom/bytedance/bdtracker/b$e;

.field public static b:Lcom/bytedance/bdtracker/b$e;

.field public static c:Lcom/bytedance/bdtracker/b$e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/bdtracker/b$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bytedance/bdtracker/b$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/bytedance/bdtracker/b;->a:Lcom/bytedance/bdtracker/b$e;

    .line 7
    .line 8
    new-instance v0, Lcom/bytedance/bdtracker/b$b;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/bytedance/bdtracker/b$b;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/bytedance/bdtracker/b;->b:Lcom/bytedance/bdtracker/b$e;

    .line 14
    .line 15
    new-instance v0, Lcom/bytedance/bdtracker/b$c;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/bytedance/bdtracker/b$c;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/bytedance/bdtracker/b;->c:Lcom/bytedance/bdtracker/b$e;

    .line 21
    .line 22
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/bytedance/bdtracker/d;
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 1
    :cond_0
    sget-object v0, Lcom/bytedance/bdtracker/d;->J:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/bdtracker/d;

    .line 3
    iget-object v3, v2, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 4
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method

.method public static a(Lcom/bytedance/applog/IAppLogInstance;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 5
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getInstance()Lcom/bytedance/applog/IAppLogInstance;

    move-result-object v0

    if-ne v0, p0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/bytedance/applog/IAppLogInstance;->getAppId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public static a(Lcom/bytedance/bdtracker/b$d;)V
    .locals 2

    .line 7
    sget-object v0, Lcom/bytedance/bdtracker/d;->J:Ljava/util/List;

    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/bdtracker/d;

    invoke-interface {p0, v1}, Lcom/bytedance/bdtracker/b$d;->a(Lcom/bytedance/bdtracker/d;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Lcom/bytedance/bdtracker/b$f;Lcom/bytedance/bdtracker/b$e;)V
    .locals 4

    .line 13
    sget-object v0, Lcom/bytedance/bdtracker/d;->J:Ljava/util/List;

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/bdtracker/d;

    invoke-interface {p1, v2}, Lcom/bytedance/bdtracker/b$e;->a(Lcom/bytedance/bdtracker/d;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v1, :cond_1

    invoke-interface {p0}, Lcom/bytedance/bdtracker/b$f;->a()Lcom/bytedance/bdtracker/u3;

    move-result-object v1

    :cond_1
    invoke-virtual {v1}, Lcom/bytedance/bdtracker/u3;->clone()Lcom/bytedance/bdtracker/u3;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/bdtracker/d;->receive(Lcom/bytedance/bdtracker/u3;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static a(Lcom/bytedance/bdtracker/u3;Lcom/bytedance/bdtracker/b$e;)V
    .locals 3

    .line 15
    sget-object v0, Lcom/bytedance/bdtracker/d;->J:Ljava/util/List;

    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/bdtracker/d;

    invoke-interface {p1, v1}, Lcom/bytedance/bdtracker/b$e;->a(Lcom/bytedance/bdtracker/d;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/bdtracker/u3;->clone()Lcom/bytedance/bdtracker/u3;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/bdtracker/d;->receive(Lcom/bytedance/bdtracker/u3;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a([Ljava/lang/String;)V
    .locals 3

    .line 11
    sget-object v0, Lcom/bytedance/bdtracker/d;->J:Ljava/util/List;

    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/bdtracker/d;

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bytedance/bdtracker/d;->receive([Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Lcom/bytedance/bdtracker/b$e;)Z
    .locals 2

    .line 9
    sget-object v0, Lcom/bytedance/bdtracker/d;->J:Ljava/util/List;

    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/bdtracker/d;

    invoke-interface {p0, v1}, Lcom/bytedance/bdtracker/b$e;->a(Lcom/bytedance/bdtracker/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    sget-object v0, Lcom/bytedance/bdtracker/d;->J:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/bytedance/bdtracker/d;

    .line 24
    .line 25
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    const/4 p0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 p0, 0x0

    .line 36
    :goto_0
    return p0
.end method
