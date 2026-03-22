.class public Lcom/applovin/impl/w6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/k;

.field private final b:Landroid/content/SharedPreferences;

.field private c:Ljava/lang/Integer;

.field private d:Ljava/lang/Integer;

.field private e:Ljava/lang/Integer;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/k;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/applovin/impl/sdk/k;->o()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/applovin/impl/w6;->b:Landroid/content/SharedPreferences;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/applovin/impl/w6;->a:Lcom/applovin/impl/sdk/k;

    .line 15
    .line 16
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 17
    .line 18
    .line 19
    sget-object p1, Lcom/applovin/impl/x4;->t:Lcom/applovin/impl/x4;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/applovin/impl/x4;->a()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-direct {p0, p1}, Lcom/applovin/impl/w6;->a(Ljava/lang/String;)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/applovin/impl/w6;->c:Ljava/lang/Integer;

    .line 30
    .line 31
    sget-object p1, Lcom/applovin/impl/x4;->u:Lcom/applovin/impl/x4;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/applovin/impl/x4;->a()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-direct {p0, p1}, Lcom/applovin/impl/w6;->a(Ljava/lang/String;)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Lcom/applovin/impl/w6;->d:Ljava/lang/Integer;

    .line 42
    .line 43
    invoke-direct {p0}, Lcom/applovin/impl/w6;->h()Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, Lcom/applovin/impl/w6;->e:Ljava/lang/Integer;

    .line 48
    .line 49
    sget-object p1, Lcom/applovin/impl/x4;->w:Lcom/applovin/impl/x4;

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    const/4 v2, 0x0

    .line 53
    invoke-static {p1, v1, v0, v2}, Lcom/applovin/impl/y4;->a(Lcom/applovin/impl/x4;Ljava/lang/Object;Landroid/content/SharedPreferences;Z)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Ljava/lang/String;

    .line 58
    .line 59
    iput-object p1, p0, Lcom/applovin/impl/w6;->f:Ljava/lang/String;

    .line 60
    .line 61
    sget-object p1, Lcom/applovin/impl/x4;->x:Lcom/applovin/impl/x4;

    .line 62
    .line 63
    invoke-static {p1, v1, v0, v2}, Lcom/applovin/impl/y4;->a(Lcom/applovin/impl/x4;Ljava/lang/Object;Landroid/content/SharedPreferences;Z)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Ljava/lang/String;

    .line 68
    .line 69
    iput-object p1, p0, Lcom/applovin/impl/w6;->g:Ljava/lang/String;

    .line 70
    .line 71
    sget-object p1, Lcom/applovin/impl/x4;->y:Lcom/applovin/impl/x4;

    .line 72
    .line 73
    invoke-static {p1, v1, v0, v2}, Lcom/applovin/impl/y4;->a(Lcom/applovin/impl/x4;Ljava/lang/Object;Landroid/content/SharedPreferences;Z)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Ljava/lang/String;

    .line 78
    .line 79
    iput-object p1, p0, Lcom/applovin/impl/w6;->h:Ljava/lang/String;

    .line 80
    .line 81
    sget-object p1, Lcom/applovin/impl/x4;->A:Lcom/applovin/impl/x4;

    .line 82
    .line 83
    invoke-static {p1, v1, v0, v2}, Lcom/applovin/impl/y4;->a(Lcom/applovin/impl/x4;Ljava/lang/Object;Landroid/content/SharedPreferences;Z)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    check-cast p1, Ljava/lang/String;

    .line 88
    .line 89
    iput-object p1, p0, Lcom/applovin/impl/w6;->i:Ljava/lang/String;

    .line 90
    .line 91
    sget-object p1, Lcom/applovin/impl/x4;->C:Lcom/applovin/impl/x4;

    .line 92
    .line 93
    invoke-static {p1, v1, v0, v2}, Lcom/applovin/impl/y4;->a(Lcom/applovin/impl/x4;Ljava/lang/Object;Landroid/content/SharedPreferences;Z)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Ljava/lang/String;

    .line 98
    .line 99
    iput-object p1, p0, Lcom/applovin/impl/w6;->j:Ljava/lang/String;

    .line 100
    .line 101
    iget-object p1, p0, Lcom/applovin/impl/w6;->g:Ljava/lang/String;

    .line 102
    .line 103
    invoke-direct {p0, p1}, Lcom/applovin/impl/w6;->b(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/w6;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/applovin/impl/w6;->b:Landroid/content/SharedPreferences;

    const-class v2, Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v0, v3}, Lcom/applovin/impl/y4;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Landroid/content/SharedPreferences;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/w6;->b:Landroid/content/SharedPreferences;

    const-class v2, Ljava/lang/Long;

    invoke-static {p1, v1, v2, v0, v3}, Lcom/applovin/impl/y4;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Landroid/content/SharedPreferences;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, -0x80000000

    cmp-long v2, v4, v6

    if-ltz v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v2, v4, v6

    if-gtz v2, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/w6;->b:Landroid/content/SharedPreferences;

    const-class v2, Ljava/lang/String;

    invoke-static {p1, v1, v2, v0, v3}, Lcom/applovin/impl/y4;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Landroid/content/SharedPreferences;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 8
    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 10
    :cond_2
    iget-object v2, p0, Lcom/applovin/impl/w6;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/applovin/impl/w6;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "String value ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") for "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not numeric - storing value as null"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TcfManager"

    invoke-virtual {v2, v0, p1}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v1
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "No value set"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/applovin/impl/w6;->c:Ljava/lang/Integer;

    .line 12
    iput-object v0, p0, Lcom/applovin/impl/w6;->e:Ljava/lang/Integer;

    .line 13
    iput-object v0, p0, Lcom/applovin/impl/w6;->f:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/applovin/impl/w6;->g:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/applovin/impl/w6;->h:Ljava/lang/String;

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    .line 4
    iget-object v0, p0, Lcom/applovin/impl/w6;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    const-string v1, "TcfManager"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/w6;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to update consent from Additional Consent string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/16 v0, 0x515

    .line 5
    invoke-static {v0, p1}, Lcom/applovin/impl/z6;->a(ILjava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 6
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/applovin/impl/w6;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/applovin/impl/w6;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    move-result-object p1

    const-string v0, "Found AppLovin ID in the list of consented ATP IDs - setting user consent to true"

    invoke-virtual {p1, v1, v0}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_1
    invoke-static {}, Lcom/applovin/impl/sdk/k;->o()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0, p1}, Lcom/applovin/impl/p0;->b(ZLandroid/content/Context;)Z

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/applovin/impl/w6;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/applovin/impl/w6;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    move-result-object p1

    const-string v0, "Could not find AppLovin ID in the list of consented ATP IDs - setting user consent to false"

    invoke-virtual {p1, v1, v0}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_3
    invoke-static {}, Lcom/applovin/impl/sdk/k;->o()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/applovin/impl/p0;->b(ZLandroid/content/Context;)Z

    .line 11
    :goto_0
    iget-object p1, p0, Lcom/applovin/impl/w6;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->S0()V

    goto :goto_1

    .line 12
    :cond_4
    iget-object p1, p0, Lcom/applovin/impl/w6;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/applovin/impl/w6;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    move-result-object p1

    const-string v0, "AC string is not valid or AppLovin was not listed on the CMP flow - no consent update"

    invoke-virtual {p1, v1, v0}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private h()Ljava/lang/Integer;
    .locals 10

    .line 1
    sget-object v0, Lcom/applovin/impl/x4;->v:Lcom/applovin/impl/x4;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/applovin/impl/x4;->a()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/applovin/impl/w6;->b:Landroid/content/SharedPreferences;

    .line 8
    .line 9
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_e

    .line 15
    .line 16
    iget-object v1, p0, Lcom/applovin/impl/w6;->b:Landroid/content/SharedPreferences;

    .line 17
    .line 18
    const-class v3, Ljava/lang/Integer;

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    invoke-static {v0, v2, v3, v1, v4}, Lcom/applovin/impl/y4;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Landroid/content/SharedPreferences;Z)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Ljava/lang/Integer;

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    const-string v5, "TcfManager"

    .line 29
    .line 30
    const-string v6, " is invalid - setting GDPR Applies to null"

    .line 31
    .line 32
    const-string v7, ") for "

    .line 33
    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eq v4, v3, :cond_2

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-nez v3, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    iget-object v3, p0, Lcom/applovin/impl/w6;->a:Lcom/applovin/impl/sdk/k;

    .line 50
    .line 51
    invoke-virtual {v3}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 52
    .line 53
    .line 54
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_1

    .line 59
    .line 60
    iget-object v3, p0, Lcom/applovin/impl/w6;->a:Lcom/applovin/impl/sdk/k;

    .line 61
    .line 62
    invoke-virtual {v3}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    new-instance v4, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v8, "Integer value ("

    .line 72
    .line 73
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v3, v5, v0}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :cond_1
    return-object v2

    .line 96
    :cond_2
    :goto_0
    return-object v1

    .line 97
    :cond_3
    iget-object v1, p0, Lcom/applovin/impl/w6;->b:Landroid/content/SharedPreferences;

    .line 98
    .line 99
    const-class v8, Ljava/lang/Long;

    .line 100
    .line 101
    invoke-static {v0, v2, v8, v1, v4}, Lcom/applovin/impl/y4;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Landroid/content/SharedPreferences;Z)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    check-cast v1, Ljava/lang/Long;

    .line 106
    .line 107
    if-eqz v1, :cond_7

    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 110
    .line 111
    .line 112
    move-result-wide v3

    .line 113
    const-wide/16 v8, 0x1

    .line 114
    .line 115
    cmp-long v3, v3, v8

    .line 116
    .line 117
    if-eqz v3, :cond_6

    .line 118
    .line 119
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 120
    .line 121
    .line 122
    move-result-wide v3

    .line 123
    const-wide/16 v8, 0x0

    .line 124
    .line 125
    cmp-long v3, v3, v8

    .line 126
    .line 127
    if-nez v3, :cond_4

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_4
    iget-object v3, p0, Lcom/applovin/impl/w6;->a:Lcom/applovin/impl/sdk/k;

    .line 131
    .line 132
    invoke-virtual {v3}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 133
    .line 134
    .line 135
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    if-eqz v3, :cond_5

    .line 140
    .line 141
    iget-object v3, p0, Lcom/applovin/impl/w6;->a:Lcom/applovin/impl/sdk/k;

    .line 142
    .line 143
    invoke-virtual {v3}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    new-instance v4, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    const-string v8, "Long value ("

    .line 153
    .line 154
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v3, v5, v0}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    :cond_5
    return-object v2

    .line 177
    :cond_6
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    return-object v0

    .line 186
    :cond_7
    iget-object v1, p0, Lcom/applovin/impl/w6;->b:Landroid/content/SharedPreferences;

    .line 187
    .line 188
    const-class v8, Ljava/lang/Boolean;

    .line 189
    .line 190
    invoke-static {v0, v2, v8, v1, v4}, Lcom/applovin/impl/y4;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Landroid/content/SharedPreferences;Z)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    check-cast v1, Ljava/lang/Boolean;

    .line 195
    .line 196
    if-eqz v1, :cond_8

    .line 197
    .line 198
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    return-object v0

    .line 207
    :cond_8
    iget-object v1, p0, Lcom/applovin/impl/w6;->b:Landroid/content/SharedPreferences;

    .line 208
    .line 209
    const-class v8, Ljava/lang/String;

    .line 210
    .line 211
    invoke-static {v0, v2, v8, v1, v4}, Lcom/applovin/impl/y4;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Landroid/content/SharedPreferences;Z)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    check-cast v1, Ljava/lang/String;

    .line 216
    .line 217
    if-eqz v1, :cond_e

    .line 218
    .line 219
    const-string v8, "1"

    .line 220
    .line 221
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v8

    .line 225
    if-nez v8, :cond_d

    .line 226
    .line 227
    const-string/jumbo v8, "true"

    .line 228
    .line 229
    .line 230
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v8

    .line 234
    if-eqz v8, :cond_9

    .line 235
    .line 236
    goto :goto_3

    .line 237
    :cond_9
    const-string v3, "0"

    .line 238
    .line 239
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v3

    .line 243
    if-nez v3, :cond_c

    .line 244
    .line 245
    const-string v3, "false"

    .line 246
    .line 247
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v3

    .line 251
    if-eqz v3, :cond_a

    .line 252
    .line 253
    goto :goto_2

    .line 254
    :cond_a
    iget-object v3, p0, Lcom/applovin/impl/w6;->a:Lcom/applovin/impl/sdk/k;

    .line 255
    .line 256
    invoke-virtual {v3}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 257
    .line 258
    .line 259
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 260
    .line 261
    .line 262
    move-result v3

    .line 263
    if-eqz v3, :cond_b

    .line 264
    .line 265
    iget-object v3, p0, Lcom/applovin/impl/w6;->a:Lcom/applovin/impl/sdk/k;

    .line 266
    .line 267
    invoke-virtual {v3}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    new-instance v4, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    .line 275
    .line 276
    const-string v8, "String value ("

    .line 277
    .line 278
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    invoke-virtual {v3, v5, v0}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    :cond_b
    return-object v2

    .line 301
    :cond_c
    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    return-object v0

    .line 306
    :cond_d
    :goto_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    return-object v0

    .line 311
    :cond_e
    return-object v2
.end method


# virtual methods
.method public a(I)Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/w6;->g:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/applovin/impl/z6;->a(ILjava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Ljava/lang/Boolean;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/w6;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 3
    invoke-static {v0, p1}, Lcom/applovin/impl/z6;->a(Ljava/lang/String;I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/w6;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/applovin/impl/z6;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public c(I)Ljava/lang/Boolean;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/w6;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 3
    invoke-static {v0, p1}, Lcom/applovin/impl/z6;->a(Ljava/lang/String;I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/w6;->g:Ljava/lang/String;

    return-object v0
.end method

.method public d(I)Ljava/lang/Boolean;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/w6;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 3
    invoke-static {v0, p1}, Lcom/applovin/impl/z6;->a(Ljava/lang/String;I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/w6;->c:Ljava/lang/Integer;

    invoke-static {v0}, Lcom/applovin/impl/u6;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/w6;->c:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/w6;->d:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/w6;->e:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/applovin/impl/w6;->d()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "CMP Name"

    .line 11
    .line 12
    invoke-direct {p0, v2, v1}, Lcom/applovin/impl/w6;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/applovin/impl/w6;->c:Ljava/lang/Integer;

    .line 20
    .line 21
    const-string v2, "CMP SDK ID"

    .line 22
    .line 23
    invoke-direct {p0, v2, v1}, Lcom/applovin/impl/w6;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/applovin/impl/w6;->d:Ljava/lang/Integer;

    .line 31
    .line 32
    const-string v2, "CMP SDK Version"

    .line 33
    .line 34
    invoke-direct {p0, v2, v1}, Lcom/applovin/impl/w6;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    sget-object v1, Lcom/applovin/impl/x4;->v:Lcom/applovin/impl/x4;

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/applovin/impl/x4;->a()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iget-object v2, p0, Lcom/applovin/impl/w6;->e:Ljava/lang/Integer;

    .line 48
    .line 49
    invoke-direct {p0, v1, v2}, Lcom/applovin/impl/w6;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    sget-object v1, Lcom/applovin/impl/x4;->w:Lcom/applovin/impl/x4;

    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/applovin/impl/x4;->a()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iget-object v2, p0, Lcom/applovin/impl/w6;->f:Ljava/lang/String;

    .line 63
    .line 64
    invoke-direct {p0, v1, v2}, Lcom/applovin/impl/w6;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    sget-object v1, Lcom/applovin/impl/x4;->x:Lcom/applovin/impl/x4;

    .line 72
    .line 73
    invoke-virtual {v1}, Lcom/applovin/impl/x4;->a()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    iget-object v2, p0, Lcom/applovin/impl/w6;->g:Ljava/lang/String;

    .line 78
    .line 79
    invoke-direct {p0, v1, v2}, Lcom/applovin/impl/w6;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/w6;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/w6;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string v0, "TcfManager"

    .line 2
    .line 3
    if-nez p2, :cond_1

    .line 4
    .line 5
    iget-object p1, p0, Lcom/applovin/impl/w6;->a:Lcom/applovin/impl/sdk/k;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/applovin/impl/w6;->a:Lcom/applovin/impl/sdk/k;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string p2, "SharedPreferences are cleared - setting all stored TC data to null"

    .line 23
    .line 24
    invoke-virtual {p1, v0, p2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-direct {p0}, Lcom/applovin/impl/w6;->a()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    sget-object v1, Lcom/applovin/impl/x4;->t:Lcom/applovin/impl/x4;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/applovin/impl/x4;->a()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    const-string v2, ", value: "

    .line 42
    .line 43
    const-string v3, "SharedPreferences entry updated - key: "

    .line 44
    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    invoke-direct {p0, p2}, Lcom/applovin/impl/w6;->a(Ljava/lang/String;)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p0, Lcom/applovin/impl/w6;->c:Ljava/lang/Integer;

    .line 52
    .line 53
    iget-object p1, p0, Lcom/applovin/impl/w6;->a:Lcom/applovin/impl/sdk/k;

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 56
    .line 57
    .line 58
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    iget-object p1, p0, Lcom/applovin/impl/w6;->a:Lcom/applovin/impl/sdk/k;

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    iget-object p2, p0, Lcom/applovin/impl/w6;->c:Ljava/lang/Integer;

    .line 85
    .line 86
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-virtual {p1, v0, p2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :cond_2
    iget-object p1, p0, Lcom/applovin/impl/w6;->a:Lcom/applovin/impl/sdk/k;

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->S0()V

    .line 99
    .line 100
    .line 101
    goto/16 :goto_0

    .line 102
    .line 103
    :cond_3
    sget-object v1, Lcom/applovin/impl/x4;->u:Lcom/applovin/impl/x4;

    .line 104
    .line 105
    invoke-virtual {v1}, Lcom/applovin/impl/x4;->a()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-eqz v1, :cond_4

    .line 114
    .line 115
    invoke-direct {p0, p2}, Lcom/applovin/impl/w6;->a(Ljava/lang/String;)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    iput-object p1, p0, Lcom/applovin/impl/w6;->d:Ljava/lang/Integer;

    .line 120
    .line 121
    iget-object p1, p0, Lcom/applovin/impl/w6;->a:Lcom/applovin/impl/sdk/k;

    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 124
    .line 125
    .line 126
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    if-eqz p1, :cond_f

    .line 131
    .line 132
    iget-object p1, p0, Lcom/applovin/impl/w6;->a:Lcom/applovin/impl/sdk/k;

    .line 133
    .line 134
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    iget-object p2, p0, Lcom/applovin/impl/w6;->d:Ljava/lang/Integer;

    .line 153
    .line 154
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    invoke-virtual {p1, v0, p2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    goto/16 :goto_0

    .line 165
    .line 166
    :cond_4
    sget-object v1, Lcom/applovin/impl/x4;->v:Lcom/applovin/impl/x4;

    .line 167
    .line 168
    invoke-virtual {v1}, Lcom/applovin/impl/x4;->a()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    if-eqz v1, :cond_5

    .line 177
    .line 178
    invoke-direct {p0}, Lcom/applovin/impl/w6;->h()Ljava/lang/Integer;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    iput-object p1, p0, Lcom/applovin/impl/w6;->e:Ljava/lang/Integer;

    .line 183
    .line 184
    iget-object p1, p0, Lcom/applovin/impl/w6;->a:Lcom/applovin/impl/sdk/k;

    .line 185
    .line 186
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 187
    .line 188
    .line 189
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    if-eqz p1, :cond_f

    .line 194
    .line 195
    iget-object p1, p0, Lcom/applovin/impl/w6;->a:Lcom/applovin/impl/sdk/k;

    .line 196
    .line 197
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    iget-object p2, p0, Lcom/applovin/impl/w6;->e:Ljava/lang/Integer;

    .line 216
    .line 217
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p2

    .line 224
    invoke-virtual {p1, v0, p2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    goto/16 :goto_0

    .line 228
    .line 229
    :cond_5
    sget-object v1, Lcom/applovin/impl/x4;->w:Lcom/applovin/impl/x4;

    .line 230
    .line 231
    invoke-virtual {v1}, Lcom/applovin/impl/x4;->a()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    const-class v4, Ljava/lang/String;

    .line 240
    .line 241
    const/4 v5, 0x0

    .line 242
    if-eqz v1, :cond_7

    .line 243
    .line 244
    invoke-static {p2, v5, v4, p1}, Lcom/applovin/impl/y4;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Landroid/content/SharedPreferences;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    check-cast p1, Ljava/lang/String;

    .line 249
    .line 250
    iput-object p1, p0, Lcom/applovin/impl/w6;->f:Ljava/lang/String;

    .line 251
    .line 252
    iget-object p1, p0, Lcom/applovin/impl/w6;->a:Lcom/applovin/impl/sdk/k;

    .line 253
    .line 254
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 255
    .line 256
    .line 257
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 258
    .line 259
    .line 260
    move-result p1

    .line 261
    if-eqz p1, :cond_6

    .line 262
    .line 263
    iget-object p1, p0, Lcom/applovin/impl/w6;->a:Lcom/applovin/impl/sdk/k;

    .line 264
    .line 265
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    iget-object p2, p0, Lcom/applovin/impl/w6;->f:Ljava/lang/String;

    .line 284
    .line 285
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object p2

    .line 292
    invoke-virtual {p1, v0, p2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    :cond_6
    iget-object p1, p0, Lcom/applovin/impl/w6;->a:Lcom/applovin/impl/sdk/k;

    .line 296
    .line 297
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->S0()V

    .line 298
    .line 299
    .line 300
    goto/16 :goto_0

    .line 301
    .line 302
    :cond_7
    sget-object v1, Lcom/applovin/impl/x4;->x:Lcom/applovin/impl/x4;

    .line 303
    .line 304
    invoke-virtual {v1}, Lcom/applovin/impl/x4;->a()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    move-result v1

    .line 312
    if-eqz v1, :cond_9

    .line 313
    .line 314
    invoke-static {p2, v5, v4, p1}, Lcom/applovin/impl/y4;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Landroid/content/SharedPreferences;)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object p1

    .line 318
    check-cast p1, Ljava/lang/String;

    .line 319
    .line 320
    iput-object p1, p0, Lcom/applovin/impl/w6;->g:Ljava/lang/String;

    .line 321
    .line 322
    iget-object p1, p0, Lcom/applovin/impl/w6;->a:Lcom/applovin/impl/sdk/k;

    .line 323
    .line 324
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 325
    .line 326
    .line 327
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 328
    .line 329
    .line 330
    move-result p1

    .line 331
    if-eqz p1, :cond_8

    .line 332
    .line 333
    iget-object p1, p0, Lcom/applovin/impl/w6;->a:Lcom/applovin/impl/sdk/k;

    .line 334
    .line 335
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 336
    .line 337
    .line 338
    move-result-object p1

    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    .line 340
    .line 341
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    iget-object p2, p0, Lcom/applovin/impl/w6;->g:Ljava/lang/String;

    .line 354
    .line 355
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object p2

    .line 362
    invoke-virtual {p1, v0, p2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    :cond_8
    iget-object p1, p0, Lcom/applovin/impl/w6;->g:Ljava/lang/String;

    .line 366
    .line 367
    invoke-direct {p0, p1}, Lcom/applovin/impl/w6;->b(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    goto/16 :goto_0

    .line 371
    .line 372
    :cond_9
    sget-object v1, Lcom/applovin/impl/x4;->y:Lcom/applovin/impl/x4;

    .line 373
    .line 374
    invoke-virtual {v1}, Lcom/applovin/impl/x4;->a()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    move-result v1

    .line 382
    if-eqz v1, :cond_a

    .line 383
    .line 384
    invoke-static {p2, v5, v4, p1}, Lcom/applovin/impl/y4;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Landroid/content/SharedPreferences;)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object p1

    .line 388
    check-cast p1, Ljava/lang/String;

    .line 389
    .line 390
    iput-object p1, p0, Lcom/applovin/impl/w6;->h:Ljava/lang/String;

    .line 391
    .line 392
    iget-object p1, p0, Lcom/applovin/impl/w6;->a:Lcom/applovin/impl/sdk/k;

    .line 393
    .line 394
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 395
    .line 396
    .line 397
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 398
    .line 399
    .line 400
    move-result p1

    .line 401
    if-eqz p1, :cond_f

    .line 402
    .line 403
    iget-object p1, p0, Lcom/applovin/impl/w6;->a:Lcom/applovin/impl/sdk/k;

    .line 404
    .line 405
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 406
    .line 407
    .line 408
    move-result-object p1

    .line 409
    new-instance v1, Ljava/lang/StringBuilder;

    .line 410
    .line 411
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    iget-object p2, p0, Lcom/applovin/impl/w6;->h:Ljava/lang/String;

    .line 424
    .line 425
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object p2

    .line 432
    invoke-virtual {p1, v0, p2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    goto/16 :goto_0

    .line 436
    .line 437
    :cond_a
    sget-object v1, Lcom/applovin/impl/x4;->z:Lcom/applovin/impl/x4;

    .line 438
    .line 439
    invoke-virtual {v1}, Lcom/applovin/impl/x4;->a()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v1

    .line 443
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 444
    .line 445
    .line 446
    move-result v1

    .line 447
    if-eqz v1, :cond_b

    .line 448
    .line 449
    invoke-static {p2, v5, v4, p1}, Lcom/applovin/impl/y4;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Landroid/content/SharedPreferences;)Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object p1

    .line 453
    check-cast p1, Ljava/lang/String;

    .line 454
    .line 455
    iget-object v1, p0, Lcom/applovin/impl/w6;->a:Lcom/applovin/impl/sdk/k;

    .line 456
    .line 457
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 458
    .line 459
    .line 460
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 461
    .line 462
    .line 463
    move-result v1

    .line 464
    if-eqz v1, :cond_f

    .line 465
    .line 466
    iget-object v1, p0, Lcom/applovin/impl/w6;->a:Lcom/applovin/impl/sdk/k;

    .line 467
    .line 468
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 469
    .line 470
    .line 471
    move-result-object v1

    .line 472
    new-instance v4, Ljava/lang/StringBuilder;

    .line 473
    .line 474
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object p1

    .line 493
    invoke-virtual {v1, v0, p1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    goto/16 :goto_0

    .line 497
    .line 498
    :cond_b
    sget-object v1, Lcom/applovin/impl/x4;->A:Lcom/applovin/impl/x4;

    .line 499
    .line 500
    invoke-virtual {v1}, Lcom/applovin/impl/x4;->a()Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v1

    .line 504
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 505
    .line 506
    .line 507
    move-result v1

    .line 508
    if-eqz v1, :cond_c

    .line 509
    .line 510
    invoke-static {p2, v5, v4, p1}, Lcom/applovin/impl/y4;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Landroid/content/SharedPreferences;)Ljava/lang/Object;

    .line 511
    .line 512
    .line 513
    move-result-object p1

    .line 514
    check-cast p1, Ljava/lang/String;

    .line 515
    .line 516
    iput-object p1, p0, Lcom/applovin/impl/w6;->i:Ljava/lang/String;

    .line 517
    .line 518
    iget-object p1, p0, Lcom/applovin/impl/w6;->a:Lcom/applovin/impl/sdk/k;

    .line 519
    .line 520
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 521
    .line 522
    .line 523
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 524
    .line 525
    .line 526
    move-result p1

    .line 527
    if-eqz p1, :cond_f

    .line 528
    .line 529
    iget-object p1, p0, Lcom/applovin/impl/w6;->a:Lcom/applovin/impl/sdk/k;

    .line 530
    .line 531
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 532
    .line 533
    .line 534
    move-result-object p1

    .line 535
    new-instance v1, Ljava/lang/StringBuilder;

    .line 536
    .line 537
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 538
    .line 539
    .line 540
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    .line 548
    .line 549
    iget-object p2, p0, Lcom/applovin/impl/w6;->i:Ljava/lang/String;

    .line 550
    .line 551
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    .line 553
    .line 554
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object p2

    .line 558
    invoke-virtual {p1, v0, p2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    goto/16 :goto_0

    .line 562
    .line 563
    :cond_c
    sget-object v1, Lcom/applovin/impl/x4;->B:Lcom/applovin/impl/x4;

    .line 564
    .line 565
    invoke-virtual {v1}, Lcom/applovin/impl/x4;->a()Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object v1

    .line 569
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 570
    .line 571
    .line 572
    move-result v1

    .line 573
    if-eqz v1, :cond_d

    .line 574
    .line 575
    invoke-static {p2, v5, v4, p1}, Lcom/applovin/impl/y4;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Landroid/content/SharedPreferences;)Ljava/lang/Object;

    .line 576
    .line 577
    .line 578
    move-result-object p1

    .line 579
    check-cast p1, Ljava/lang/String;

    .line 580
    .line 581
    iget-object v1, p0, Lcom/applovin/impl/w6;->a:Lcom/applovin/impl/sdk/k;

    .line 582
    .line 583
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 584
    .line 585
    .line 586
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 587
    .line 588
    .line 589
    move-result v1

    .line 590
    if-eqz v1, :cond_f

    .line 591
    .line 592
    iget-object v1, p0, Lcom/applovin/impl/w6;->a:Lcom/applovin/impl/sdk/k;

    .line 593
    .line 594
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 595
    .line 596
    .line 597
    move-result-object v1

    .line 598
    new-instance v4, Ljava/lang/StringBuilder;

    .line 599
    .line 600
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 601
    .line 602
    .line 603
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    .line 605
    .line 606
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    .line 608
    .line 609
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    .line 611
    .line 612
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    .line 614
    .line 615
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object p1

    .line 619
    invoke-virtual {v1, v0, p1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    .line 621
    .line 622
    goto/16 :goto_0

    .line 623
    .line 624
    :cond_d
    sget-object v1, Lcom/applovin/impl/x4;->C:Lcom/applovin/impl/x4;

    .line 625
    .line 626
    invoke-virtual {v1}, Lcom/applovin/impl/x4;->a()Ljava/lang/String;

    .line 627
    .line 628
    .line 629
    move-result-object v1

    .line 630
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 631
    .line 632
    .line 633
    move-result v1

    .line 634
    if-eqz v1, :cond_e

    .line 635
    .line 636
    invoke-static {p2, v5, v4, p1}, Lcom/applovin/impl/y4;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Landroid/content/SharedPreferences;)Ljava/lang/Object;

    .line 637
    .line 638
    .line 639
    move-result-object p1

    .line 640
    check-cast p1, Ljava/lang/String;

    .line 641
    .line 642
    iput-object p1, p0, Lcom/applovin/impl/w6;->j:Ljava/lang/String;

    .line 643
    .line 644
    iget-object p1, p0, Lcom/applovin/impl/w6;->a:Lcom/applovin/impl/sdk/k;

    .line 645
    .line 646
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 647
    .line 648
    .line 649
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 650
    .line 651
    .line 652
    move-result p1

    .line 653
    if-eqz p1, :cond_f

    .line 654
    .line 655
    iget-object p1, p0, Lcom/applovin/impl/w6;->a:Lcom/applovin/impl/sdk/k;

    .line 656
    .line 657
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 658
    .line 659
    .line 660
    move-result-object p1

    .line 661
    new-instance v1, Ljava/lang/StringBuilder;

    .line 662
    .line 663
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 664
    .line 665
    .line 666
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    .line 668
    .line 669
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    .line 671
    .line 672
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    .line 674
    .line 675
    iget-object p2, p0, Lcom/applovin/impl/w6;->j:Ljava/lang/String;

    .line 676
    .line 677
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    .line 679
    .line 680
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 681
    .line 682
    .line 683
    move-result-object p2

    .line 684
    invoke-virtual {p1, v0, p2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    .line 686
    .line 687
    goto :goto_0

    .line 688
    :cond_e
    const-string v1, "IABTCF_PublisherRestrictions"

    .line 689
    .line 690
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 691
    .line 692
    .line 693
    move-result v1

    .line 694
    if-eqz v1, :cond_f

    .line 695
    .line 696
    invoke-static {p2, v5, v4, p1}, Lcom/applovin/impl/y4;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Landroid/content/SharedPreferences;)Ljava/lang/Object;

    .line 697
    .line 698
    .line 699
    move-result-object p1

    .line 700
    check-cast p1, Ljava/lang/String;

    .line 701
    .line 702
    iget-object v1, p0, Lcom/applovin/impl/w6;->a:Lcom/applovin/impl/sdk/k;

    .line 703
    .line 704
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 705
    .line 706
    .line 707
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 708
    .line 709
    .line 710
    move-result v1

    .line 711
    if-eqz v1, :cond_f

    .line 712
    .line 713
    iget-object v1, p0, Lcom/applovin/impl/w6;->a:Lcom/applovin/impl/sdk/k;

    .line 714
    .line 715
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 716
    .line 717
    .line 718
    move-result-object v1

    .line 719
    new-instance v4, Ljava/lang/StringBuilder;

    .line 720
    .line 721
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 722
    .line 723
    .line 724
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    .line 726
    .line 727
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    .line 729
    .line 730
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    .line 732
    .line 733
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    .line 735
    .line 736
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 737
    .line 738
    .line 739
    move-result-object p1

    .line 740
    invoke-virtual {v1, v0, p1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    .line 742
    .line 743
    :cond_f
    :goto_0
    return-void
.end method
