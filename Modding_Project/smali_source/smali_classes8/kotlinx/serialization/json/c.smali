.class public final Lkotlinx/serialization/json/c;
.super Ljava/lang/Object;
.source "Json.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nJson.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Json.kt\nkotlinx/serialization/json/JsonBuilder\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,684:1\n1069#2,2:685\n*S KotlinDebug\n*F\n+ 1 Json.kt\nkotlinx/serialization/json/JsonBuilder\n*L\n647#1:685,2\n*E\n"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private g:Z

.field private h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private i:Lkotlinx/serialization/json/ClassDiscriminatorMode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Lxt/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/a;)V
    .locals 1
    .param p1    # Lkotlinx/serialization/json/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "json"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->d()Lkotlinx/serialization/json/e;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lkotlinx/serialization/json/e;->i()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput-boolean v0, p0, Lkotlinx/serialization/json/c;->a:Z

    .line 18
    .line 19
    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->d()Lkotlinx/serialization/json/e;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lkotlinx/serialization/json/e;->j()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iput-boolean v0, p0, Lkotlinx/serialization/json/c;->b:Z

    .line 28
    .line 29
    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->d()Lkotlinx/serialization/json/e;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lkotlinx/serialization/json/e;->k()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iput-boolean v0, p0, Lkotlinx/serialization/json/c;->c:Z

    .line 38
    .line 39
    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->d()Lkotlinx/serialization/json/e;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lkotlinx/serialization/json/e;->q()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iput-boolean v0, p0, Lkotlinx/serialization/json/c;->d:Z

    .line 48
    .line 49
    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->d()Lkotlinx/serialization/json/e;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lkotlinx/serialization/json/e;->m()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    iput-boolean v0, p0, Lkotlinx/serialization/json/c;->e:Z

    .line 58
    .line 59
    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->d()Lkotlinx/serialization/json/e;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lkotlinx/serialization/json/e;->n()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iput-object v0, p0, Lkotlinx/serialization/json/c;->f:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->d()Lkotlinx/serialization/json/e;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lkotlinx/serialization/json/e;->g()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    iput-boolean v0, p0, Lkotlinx/serialization/json/c;->g:Z

    .line 78
    .line 79
    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->d()Lkotlinx/serialization/json/e;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lkotlinx/serialization/json/e;->e()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iput-object v0, p0, Lkotlinx/serialization/json/c;->h:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->d()Lkotlinx/serialization/json/e;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lkotlinx/serialization/json/e;->f()Lkotlinx/serialization/json/ClassDiscriminatorMode;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    iput-object v0, p0, Lkotlinx/serialization/json/c;->i:Lkotlinx/serialization/json/ClassDiscriminatorMode;

    .line 98
    .line 99
    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->d()Lkotlinx/serialization/json/e;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lkotlinx/serialization/json/e;->o()Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    iput-boolean v0, p0, Lkotlinx/serialization/json/c;->j:Z

    .line 108
    .line 109
    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->d()Lkotlinx/serialization/json/e;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lkotlinx/serialization/json/e;->l()Lkotlinx/serialization/json/w;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->d()Lkotlinx/serialization/json/e;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v0}, Lkotlinx/serialization/json/e;->h()Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    iput-boolean v0, p0, Lkotlinx/serialization/json/c;->k:Z

    .line 125
    .line 126
    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->d()Lkotlinx/serialization/json/e;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lkotlinx/serialization/json/e;->d()Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    iput-boolean v0, p0, Lkotlinx/serialization/json/c;->l:Z

    .line 135
    .line 136
    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->d()Lkotlinx/serialization/json/e;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {v0}, Lkotlinx/serialization/json/e;->a()Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    iput-boolean v0, p0, Lkotlinx/serialization/json/c;->m:Z

    .line 145
    .line 146
    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->d()Lkotlinx/serialization/json/e;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {v0}, Lkotlinx/serialization/json/e;->b()Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    iput-boolean v0, p0, Lkotlinx/serialization/json/c;->n:Z

    .line 155
    .line 156
    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->d()Lkotlinx/serialization/json/e;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {v0}, Lkotlinx/serialization/json/e;->c()Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    iput-boolean v0, p0, Lkotlinx/serialization/json/c;->o:Z

    .line 165
    .line 166
    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->d()Lkotlinx/serialization/json/e;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-virtual {v0}, Lkotlinx/serialization/json/e;->p()Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    iput-boolean v0, p0, Lkotlinx/serialization/json/c;->p:Z

    .line 175
    .line 176
    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->getSerializersModule()Lxt/a;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    iput-object p1, p0, Lkotlinx/serialization/json/c;->q:Lxt/a;

    .line 181
    .line 182
    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/serialization/json/e;
    .locals 21
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Lkotlinx/serialization/json/c;->p:Z

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget-object v1, v0, Lkotlinx/serialization/json/c;->h:Ljava/lang/String;

    .line 8
    .line 9
    const-string v2, "type"

    .line 10
    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget-object v1, v0, Lkotlinx/serialization/json/c;->i:Lkotlinx/serialization/json/ClassDiscriminatorMode;

    .line 18
    .line 19
    sget-object v2, Lkotlinx/serialization/json/ClassDiscriminatorMode;->POLYMORPHIC:Lkotlinx/serialization/json/ClassDiscriminatorMode;

    .line 20
    .line 21
    if-ne v1, v2, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    const-string v2, "useArrayPolymorphism option can only be used if classDiscriminatorMode in a default POLYMORPHIC state."

    .line 27
    .line 28
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v1

    .line 32
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 33
    .line 34
    const-string v2, "Class discriminator should not be specified when array polymorphism is specified"

    .line 35
    .line 36
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v1

    .line 40
    :cond_2
    :goto_0
    iget-boolean v1, v0, Lkotlinx/serialization/json/c;->e:Z

    .line 41
    .line 42
    const-string v2, "    "

    .line 43
    .line 44
    if-nez v1, :cond_4

    .line 45
    .line 46
    iget-object v1, v0, Lkotlinx/serialization/json/c;->f:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 56
    .line 57
    const-string v2, "Indent should not be specified when default printing mode is used"

    .line 58
    .line 59
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw v1

    .line 63
    :cond_4
    iget-object v1, v0, Lkotlinx/serialization/json/c;->f:Ljava/lang/String;

    .line 64
    .line 65
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-nez v1, :cond_7

    .line 70
    .line 71
    iget-object v1, v0, Lkotlinx/serialization/json/c;->f:Ljava/lang/String;

    .line 72
    .line 73
    const/4 v2, 0x0

    .line 74
    :goto_1
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-ge v2, v3, :cond_7

    .line 79
    .line 80
    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    const/16 v4, 0x20

    .line 85
    .line 86
    if-eq v3, v4, :cond_6

    .line 87
    .line 88
    const/16 v4, 0x9

    .line 89
    .line 90
    if-eq v3, v4, :cond_6

    .line 91
    .line 92
    const/16 v4, 0xd

    .line 93
    .line 94
    if-eq v3, v4, :cond_6

    .line 95
    .line 96
    const/16 v4, 0xa

    .line 97
    .line 98
    if-ne v3, v4, :cond_5

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    const-string v2, "Only whitespace, tab, newline and carriage return are allowed as pretty print symbols. Had "

    .line 107
    .line 108
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-object v2, v0, Lkotlinx/serialization/json/c;->f:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 121
    .line 122
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw v2

    .line 130
    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_7
    :goto_3
    new-instance v1, Lkotlinx/serialization/json/e;

    .line 134
    .line 135
    move-object v3, v1

    .line 136
    iget-boolean v4, v0, Lkotlinx/serialization/json/c;->a:Z

    .line 137
    .line 138
    iget-boolean v5, v0, Lkotlinx/serialization/json/c;->c:Z

    .line 139
    .line 140
    iget-boolean v6, v0, Lkotlinx/serialization/json/c;->d:Z

    .line 141
    .line 142
    iget-boolean v7, v0, Lkotlinx/serialization/json/c;->o:Z

    .line 143
    .line 144
    iget-boolean v8, v0, Lkotlinx/serialization/json/c;->e:Z

    .line 145
    .line 146
    iget-boolean v9, v0, Lkotlinx/serialization/json/c;->b:Z

    .line 147
    .line 148
    iget-object v10, v0, Lkotlinx/serialization/json/c;->f:Ljava/lang/String;

    .line 149
    .line 150
    iget-boolean v11, v0, Lkotlinx/serialization/json/c;->g:Z

    .line 151
    .line 152
    iget-boolean v12, v0, Lkotlinx/serialization/json/c;->p:Z

    .line 153
    .line 154
    iget-object v13, v0, Lkotlinx/serialization/json/c;->h:Ljava/lang/String;

    .line 155
    .line 156
    iget-boolean v14, v0, Lkotlinx/serialization/json/c;->n:Z

    .line 157
    .line 158
    iget-boolean v15, v0, Lkotlinx/serialization/json/c;->j:Z

    .line 159
    .line 160
    iget-boolean v2, v0, Lkotlinx/serialization/json/c;->k:Z

    .line 161
    .line 162
    move/from16 v17, v2

    .line 163
    .line 164
    iget-boolean v2, v0, Lkotlinx/serialization/json/c;->l:Z

    .line 165
    .line 166
    move/from16 v18, v2

    .line 167
    .line 168
    iget-boolean v2, v0, Lkotlinx/serialization/json/c;->m:Z

    .line 169
    .line 170
    move/from16 v19, v2

    .line 171
    .line 172
    iget-object v2, v0, Lkotlinx/serialization/json/c;->i:Lkotlinx/serialization/json/ClassDiscriminatorMode;

    .line 173
    .line 174
    move-object/from16 v20, v2

    .line 175
    .line 176
    const/16 v16, 0x0

    .line 177
    .line 178
    invoke-direct/range {v3 .. v20}, Lkotlinx/serialization/json/e;-><init>(ZZZZZZLjava/lang/String;ZZLjava/lang/String;ZZLkotlinx/serialization/json/w;ZZZLkotlinx/serialization/json/ClassDiscriminatorMode;)V

    .line 179
    .line 180
    .line 181
    return-object v1
.end method

.method public final b()Lxt/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/c;->q:Lxt/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lkotlinx/serialization/json/c;->o:Z

    .line 2
    .line 3
    return-void
.end method

.method public final d(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lkotlinx/serialization/json/c;->a:Z

    .line 2
    .line 3
    return-void
.end method

.method public final e(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lkotlinx/serialization/json/c;->b:Z

    .line 2
    .line 3
    return-void
.end method

.method public final f(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lkotlinx/serialization/json/c;->c:Z

    .line 2
    .line 3
    return-void
.end method

.method public final g(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lkotlinx/serialization/json/c;->d:Z

    .line 2
    .line 3
    return-void
.end method
