.class Lio/bidmachine/y3;
.super Ljava/lang/Object;
.source "IABSharedPreferenceImpl.java"

# interfaces
.implements Lio/bidmachine/x3;


# instance fields
.field private final b:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private c:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private h:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/bidmachine/y3$a;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lio/bidmachine/y3$a;-><init>(Lio/bidmachine/y3;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/bidmachine/y3;->b:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 10
    .line 11
    return-void
.end method

.method static synthetic i(Lio/bidmachine/y3;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/y3;->n(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private j(Landroid/content/SharedPreferences;)V
    .locals 2
    .param p1    # Landroid/content/SharedPreferences;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "IABConsent_ConsentString"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p1, v0, v1}, Lfr/i;->c(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lio/bidmachine/y3;->e:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method private k(Landroid/content/SharedPreferences;)V
    .locals 2
    .param p1    # Landroid/content/SharedPreferences;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "IABConsent_SubjectToGDPR"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p1, v0, v1}, Lfr/i;->c(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const-string v0, "1"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :cond_0
    iput-object v1, p0, Lio/bidmachine/y3;->c:Ljava/lang/Boolean;

    .line 21
    .line 22
    return-void
.end method

.method private l(Landroid/content/SharedPreferences;)V
    .locals 5
    .param p1    # Landroid/content/SharedPreferences;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "IABGPP_GppSID"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p1, v0, v1}, Lfr/i;->c(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iput-object v1, p0, Lio/bidmachine/y3;->i:Ljava/util/List;

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    :try_start_0
    const-string v0, "_"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    array-length v0, p1

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    iput-object v1, p0, Lio/bidmachine/y3;->i:Ljava/util/List;

    .line 27
    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_2

    .line 31
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lio/bidmachine/y3;->i:Ljava/util/List;

    .line 37
    .line 38
    array-length v0, p1

    .line 39
    const/4 v2, 0x0

    .line 40
    :goto_0
    if-ge v2, v0, :cond_3

    .line 41
    .line 42
    aget-object v3, p1, v2

    .line 43
    .line 44
    invoke-static {v3, v1}, Lio/bidmachine/core/g;->g0(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    if-nez v3, :cond_2

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    iget-object v4, p0, Lio/bidmachine/y3;->i:Ljava/util/List;

    .line 52
    .line 53
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :goto_2
    invoke-static {p1}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    iput-object v1, p0, Lio/bidmachine/y3;->i:Ljava/util/List;

    .line 63
    .line 64
    :cond_3
    return-void
.end method

.method private m(Landroid/content/SharedPreferences;)V
    .locals 2
    .param p1    # Landroid/content/SharedPreferences;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "IABGPP_HDR_GppString"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p1, v0, v1}, Lfr/i;->c(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lio/bidmachine/y3;->h:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method private n(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/content/SharedPreferences;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 9
    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    sparse-switch v1, :sswitch_data_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :sswitch_0
    const-string v1, "IABGPP_HDR_GppString"

    .line 21
    .line 22
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-nez p2, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v0, 0x6

    .line 30
    goto :goto_0

    .line 31
    :sswitch_1
    const-string v1, "IABConsent_SubjectToGDPR"

    .line 32
    .line 33
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-nez p2, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const/4 v0, 0x5

    .line 41
    goto :goto_0

    .line 42
    :sswitch_2
    const-string v1, "IABTCF_TCString"

    .line 43
    .line 44
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    if-nez p2, :cond_3

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    const/4 v0, 0x4

    .line 52
    goto :goto_0

    .line 53
    :sswitch_3
    const-string v1, "IABConsent_ConsentString"

    .line 54
    .line 55
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    if-nez p2, :cond_4

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_4
    const/4 v0, 0x3

    .line 63
    goto :goto_0

    .line 64
    :sswitch_4
    const-string v1, "IABUSPrivacy_String"

    .line 65
    .line 66
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    if-nez p2, :cond_5

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_5
    const/4 v0, 0x2

    .line 74
    goto :goto_0

    .line 75
    :sswitch_5
    const-string v1, "IABGPP_GppSID"

    .line 76
    .line 77
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    if-nez p2, :cond_6

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_6
    const/4 v0, 0x1

    .line 85
    goto :goto_0

    .line 86
    :sswitch_6
    const-string v1, "IABTCF_gdprApplies"

    .line 87
    .line 88
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    if-nez p2, :cond_7

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_7
    const/4 v0, 0x0

    .line 96
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :pswitch_0
    invoke-direct {p0, p1}, Lio/bidmachine/y3;->m(Landroid/content/SharedPreferences;)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :pswitch_1
    invoke-direct {p0, p1}, Lio/bidmachine/y3;->k(Landroid/content/SharedPreferences;)V

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :pswitch_2
    invoke-direct {p0, p1}, Lio/bidmachine/y3;->p(Landroid/content/SharedPreferences;)V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :pswitch_3
    invoke-direct {p0, p1}, Lio/bidmachine/y3;->j(Landroid/content/SharedPreferences;)V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :pswitch_4
    invoke-direct {p0, p1}, Lio/bidmachine/y3;->q(Landroid/content/SharedPreferences;)V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :pswitch_5
    invoke-direct {p0, p1}, Lio/bidmachine/y3;->l(Landroid/content/SharedPreferences;)V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :pswitch_6
    invoke-direct {p0, p1}, Lio/bidmachine/y3;->o(Landroid/content/SharedPreferences;)V

    .line 125
    .line 126
    .line 127
    :goto_1
    return-void

    .line 128
    nop

    .line 129
    :sswitch_data_0
    .sparse-switch
        0x4fc43fb -> :sswitch_6
        0x7838729 -> :sswitch_5
        0x2c500d30 -> :sswitch_4
        0x39c4b13c -> :sswitch_3
        0x48a6de12 -> :sswitch_2
        0x497ef957 -> :sswitch_1
        0x7894cead -> :sswitch_0
    .end sparse-switch

    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private o(Landroid/content/SharedPreferences;)V
    .locals 2
    .param p1    # Landroid/content/SharedPreferences;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "IABTCF_gdprApplies"

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-static {p1, v0, v1}, Lfr/i;->a(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const/4 v0, 0x1

    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 12
    .line 13
    iput-object p1, p0, Lio/bidmachine/y3;->d:Ljava/lang/Boolean;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    if-nez p1, :cond_1

    .line 17
    .line 18
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 19
    .line 20
    iput-object p1, p0, Lio/bidmachine/y3;->d:Ljava/lang/Boolean;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lio/bidmachine/y3;->d:Ljava/lang/Boolean;

    .line 25
    .line 26
    :goto_0
    return-void
.end method

.method private p(Landroid/content/SharedPreferences;)V
    .locals 2
    .param p1    # Landroid/content/SharedPreferences;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "IABTCF_TCString"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p1, v0, v1}, Lfr/i;->c(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lio/bidmachine/y3;->f:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method private q(Landroid/content/SharedPreferences;)V
    .locals 2
    .param p1    # Landroid/content/SharedPreferences;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "IABUSPrivacy_String"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p1, v0, v1}, Lfr/i;->c(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lio/bidmachine/y3;->g:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lio/bidmachine/y3;->b:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 6
    .line 7
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lio/bidmachine/x3;->a:[Ljava/lang/String;

    .line 11
    .line 12
    array-length v1, v0

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    if-ge v2, v1, :cond_0

    .line 15
    .line 16
    aget-object v3, v0, v2

    .line 17
    .line 18
    invoke-direct {p0, p1, v3}, Lio/bidmachine/y3;->n(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/y3;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/y3;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/y3;->d:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/y3;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/y3;->c:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/y3;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/y3;->i:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method
