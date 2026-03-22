.class final Lcom/google/firebase/sessions/a$c;
.super Ljava/lang/Object;
.source "DaggerFirebaseSessionsComponent.java"

# interfaces
.implements Lcom/google/firebase/sessions/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/sessions/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/google/firebase/sessions/a$c;

.field private b:Ll9/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll9/e<",
            "Lcom/google/firebase/f;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ll9/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll9/e<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ll9/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll9/e<",
            "Lm9/b;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ll9/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll9/e<",
            "Lj9/m0;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ll9/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll9/e<",
            "Lx8/e;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ll9/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll9/e<",
            "Lj9/b;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ll9/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll9/e<",
            "Lkotlin/coroutines/CoroutineContext;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ll9/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll9/e<",
            "Lcom/google/firebase/sessions/settings/RemoteSettingsFetcher;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ll9/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll9/e<",
            "Lkotlin/coroutines/CoroutineContext;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ll9/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll9/e<",
            "Landroidx/datastore/core/DataStore<",
            "Lcom/google/firebase/sessions/settings/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private l:Ll9/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll9/e<",
            "Lcom/google/firebase/sessions/settings/SettingsCacheImpl;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ll9/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll9/e<",
            "Lcom/google/firebase/sessions/settings/RemoteSettings;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ll9/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll9/e<",
            "Lcom/google/firebase/sessions/settings/SessionsSettings;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ll9/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll9/e<",
            "Lj9/o0;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ll9/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll9/e<",
            "Lj9/f0;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ll9/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll9/e<",
            "Lw8/b<",
            "La5/i;",
            ">;>;"
        }
    .end annotation
.end field

.field private r:Ll9/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll9/e<",
            "Lj9/f;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ll9/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll9/e<",
            "Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ll9/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll9/e<",
            "Lcom/google/firebase/sessions/SessionDataSerializer;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ll9/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll9/e<",
            "Landroidx/datastore/core/DataStore<",
            "Lcom/google/firebase/sessions/i;",
            ">;>;"
        }
    .end annotation
.end field

.field private v:Ll9/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll9/e<",
            "Lj9/w;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ll9/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll9/e<",
            "Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ll9/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll9/e<",
            "Lj9/i0;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ll9/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll9/e<",
            "Lcom/google/firebase/sessions/FirebaseSessions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;Lcom/google/firebase/f;Lx8/e;Lw8/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lcom/google/firebase/f;",
            "Lx8/e;",
            "Lw8/b<",
            "La5/i;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p0, p0, Lcom/google/firebase/sessions/a$c;->a:Lcom/google/firebase/sessions/a$c;

    .line 4
    invoke-direct/range {p0 .. p6}, Lcom/google/firebase/sessions/a$c;->c(Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;Lcom/google/firebase/f;Lx8/e;Lw8/b;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;Lcom/google/firebase/f;Lx8/e;Lw8/b;Lcom/google/firebase/sessions/a$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/google/firebase/sessions/a$c;-><init>(Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;Lcom/google/firebase/f;Lx8/e;Lw8/b;)V

    return-void
.end method

.method private c(Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;Lcom/google/firebase/f;Lx8/e;Lw8/b;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lcom/google/firebase/f;",
            "Lx8/e;",
            "Lw8/b<",
            "La5/i;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p4}, Ll9/c;->a(Ljava/lang/Object;)Ll9/b;

    .line 2
    .line 3
    .line 4
    move-result-object p4

    .line 5
    iput-object p4, p0, Lcom/google/firebase/sessions/a$c;->b:Ll9/e;

    .line 6
    .line 7
    invoke-static {p1}, Ll9/c;->a(Ljava/lang/Object;)Ll9/b;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/google/firebase/sessions/a$c;->c:Ll9/e;

    .line 12
    .line 13
    invoke-static {p1}, Lm9/c;->a(Lls/a;)Lm9/c;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Ll9/a;->a(Ll9/e;)Ll9/e;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/google/firebase/sessions/a$c;->d:Ll9/e;

    .line 22
    .line 23
    invoke-static {}, Lcom/google/firebase/sessions/f;->a()Lcom/google/firebase/sessions/f;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1}, Ll9/a;->a(Ll9/e;)Ll9/e;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/google/firebase/sessions/a$c;->e:Ll9/e;

    .line 32
    .line 33
    invoke-static {p5}, Ll9/c;->a(Ljava/lang/Object;)Ll9/b;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Lcom/google/firebase/sessions/a$c;->f:Ll9/e;

    .line 38
    .line 39
    iget-object p1, p0, Lcom/google/firebase/sessions/a$c;->b:Ll9/e;

    .line 40
    .line 41
    invoke-static {p1}, Lcom/google/firebase/sessions/c;->b(Lls/a;)Lcom/google/firebase/sessions/c;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {p1}, Ll9/a;->a(Ll9/e;)Ll9/e;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput-object p1, p0, Lcom/google/firebase/sessions/a$c;->g:Ll9/e;

    .line 50
    .line 51
    invoke-static {p3}, Ll9/c;->a(Ljava/lang/Object;)Ll9/b;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iput-object p1, p0, Lcom/google/firebase/sessions/a$c;->h:Ll9/e;

    .line 56
    .line 57
    iget-object p3, p0, Lcom/google/firebase/sessions/a$c;->g:Ll9/e;

    .line 58
    .line 59
    invoke-static {p3, p1}, Lm9/d;->a(Lls/a;Lls/a;)Lm9/d;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {p1}, Ll9/a;->a(Ll9/e;)Ll9/e;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iput-object p1, p0, Lcom/google/firebase/sessions/a$c;->i:Ll9/e;

    .line 68
    .line 69
    invoke-static {p2}, Ll9/c;->a(Ljava/lang/Object;)Ll9/b;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iput-object p1, p0, Lcom/google/firebase/sessions/a$c;->j:Ll9/e;

    .line 74
    .line 75
    iget-object p1, p0, Lcom/google/firebase/sessions/a$c;->c:Ll9/e;

    .line 76
    .line 77
    iget-object p2, p0, Lcom/google/firebase/sessions/a$c;->h:Ll9/e;

    .line 78
    .line 79
    invoke-static {p1, p2}, Lcom/google/firebase/sessions/d;->a(Lls/a;Lls/a;)Lcom/google/firebase/sessions/d;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-static {p1}, Ll9/a;->a(Ll9/e;)Ll9/e;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    iput-object p1, p0, Lcom/google/firebase/sessions/a$c;->k:Ll9/e;

    .line 88
    .line 89
    iget-object p2, p0, Lcom/google/firebase/sessions/a$c;->j:Ll9/e;

    .line 90
    .line 91
    iget-object p3, p0, Lcom/google/firebase/sessions/a$c;->e:Ll9/e;

    .line 92
    .line 93
    invoke-static {p2, p3, p1}, Lm9/h;->a(Lls/a;Lls/a;Lls/a;)Lm9/h;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-static {p1}, Ll9/a;->a(Ll9/e;)Ll9/e;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    iput-object p1, p0, Lcom/google/firebase/sessions/a$c;->l:Ll9/e;

    .line 102
    .line 103
    iget-object p2, p0, Lcom/google/firebase/sessions/a$c;->e:Ll9/e;

    .line 104
    .line 105
    iget-object p3, p0, Lcom/google/firebase/sessions/a$c;->f:Ll9/e;

    .line 106
    .line 107
    iget-object p4, p0, Lcom/google/firebase/sessions/a$c;->g:Ll9/e;

    .line 108
    .line 109
    iget-object p5, p0, Lcom/google/firebase/sessions/a$c;->i:Ll9/e;

    .line 110
    .line 111
    invoke-static {p2, p3, p4, p5, p1}, Lm9/e;->a(Lls/a;Lls/a;Lls/a;Lls/a;Lls/a;)Lm9/e;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-static {p1}, Ll9/a;->a(Ll9/e;)Ll9/e;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    iput-object p1, p0, Lcom/google/firebase/sessions/a$c;->m:Ll9/e;

    .line 120
    .line 121
    iget-object p2, p0, Lcom/google/firebase/sessions/a$c;->d:Ll9/e;

    .line 122
    .line 123
    invoke-static {p2, p1}, Lm9/f;->a(Lls/a;Lls/a;)Lm9/f;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-static {p1}, Ll9/a;->a(Ll9/e;)Ll9/e;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    iput-object p1, p0, Lcom/google/firebase/sessions/a$c;->n:Ll9/e;

    .line 132
    .line 133
    invoke-static {}, Lcom/google/firebase/sessions/g;->a()Lcom/google/firebase/sessions/g;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-static {p1}, Ll9/a;->a(Ll9/e;)Ll9/e;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    iput-object p1, p0, Lcom/google/firebase/sessions/a$c;->o:Ll9/e;

    .line 142
    .line 143
    iget-object p2, p0, Lcom/google/firebase/sessions/a$c;->e:Ll9/e;

    .line 144
    .line 145
    invoke-static {p2, p1}, Lj9/g0;->a(Lls/a;Lls/a;)Lj9/g0;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-static {p1}, Ll9/a;->a(Ll9/e;)Ll9/e;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    iput-object p1, p0, Lcom/google/firebase/sessions/a$c;->p:Ll9/e;

    .line 154
    .line 155
    invoke-static {p6}, Ll9/c;->a(Ljava/lang/Object;)Ll9/b;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    iput-object p1, p0, Lcom/google/firebase/sessions/a$c;->q:Ll9/e;

    .line 160
    .line 161
    invoke-static {p1}, Lj9/h;->a(Lls/a;)Lj9/h;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-static {p1}, Ll9/a;->a(Ll9/e;)Ll9/e;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    iput-object p1, p0, Lcom/google/firebase/sessions/a$c;->r:Ll9/e;

    .line 170
    .line 171
    iget-object p2, p0, Lcom/google/firebase/sessions/a$c;->b:Ll9/e;

    .line 172
    .line 173
    iget-object p3, p0, Lcom/google/firebase/sessions/a$c;->f:Ll9/e;

    .line 174
    .line 175
    iget-object p4, p0, Lcom/google/firebase/sessions/a$c;->n:Ll9/e;

    .line 176
    .line 177
    iget-object p5, p0, Lcom/google/firebase/sessions/a$c;->j:Ll9/e;

    .line 178
    .line 179
    invoke-static {p2, p3, p4, p1, p5}, Lj9/e0;->a(Lls/a;Lls/a;Lls/a;Lls/a;Lls/a;)Lj9/e0;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-static {p1}, Ll9/a;->a(Ll9/e;)Ll9/e;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    iput-object p1, p0, Lcom/google/firebase/sessions/a$c;->s:Ll9/e;

    .line 188
    .line 189
    iget-object p1, p0, Lcom/google/firebase/sessions/a$c;->p:Ll9/e;

    .line 190
    .line 191
    invoke-static {p1}, Lj9/a0;->a(Lls/a;)Lj9/a0;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-static {p1}, Ll9/a;->a(Ll9/e;)Ll9/e;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    iput-object p1, p0, Lcom/google/firebase/sessions/a$c;->t:Ll9/e;

    .line 200
    .line 201
    iget-object p2, p0, Lcom/google/firebase/sessions/a$c;->c:Ll9/e;

    .line 202
    .line 203
    iget-object p3, p0, Lcom/google/firebase/sessions/a$c;->h:Ll9/e;

    .line 204
    .line 205
    invoke-static {p2, p3, p1}, Lcom/google/firebase/sessions/e;->a(Lls/a;Lls/a;Lls/a;)Lcom/google/firebase/sessions/e;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-static {p1}, Ll9/a;->a(Ll9/e;)Ll9/e;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    iput-object p1, p0, Lcom/google/firebase/sessions/a$c;->u:Ll9/e;

    .line 214
    .line 215
    iget-object p1, p0, Lcom/google/firebase/sessions/a$c;->c:Ll9/e;

    .line 216
    .line 217
    iget-object p2, p0, Lcom/google/firebase/sessions/a$c;->o:Ll9/e;

    .line 218
    .line 219
    invoke-static {p1, p2}, Lj9/x;->a(Lls/a;Lls/a;)Lj9/x;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    invoke-static {p1}, Ll9/a;->a(Ll9/e;)Ll9/e;

    .line 224
    .line 225
    .line 226
    move-result-object v5

    .line 227
    iput-object v5, p0, Lcom/google/firebase/sessions/a$c;->v:Ll9/e;

    .line 228
    .line 229
    iget-object v0, p0, Lcom/google/firebase/sessions/a$c;->n:Ll9/e;

    .line 230
    .line 231
    iget-object v1, p0, Lcom/google/firebase/sessions/a$c;->p:Ll9/e;

    .line 232
    .line 233
    iget-object v2, p0, Lcom/google/firebase/sessions/a$c;->s:Ll9/e;

    .line 234
    .line 235
    iget-object v3, p0, Lcom/google/firebase/sessions/a$c;->e:Ll9/e;

    .line 236
    .line 237
    iget-object v4, p0, Lcom/google/firebase/sessions/a$c;->u:Ll9/e;

    .line 238
    .line 239
    iget-object v6, p0, Lcom/google/firebase/sessions/a$c;->j:Ll9/e;

    .line 240
    .line 241
    invoke-static/range {v0 .. v6}, Lj9/l0;->a(Lls/a;Lls/a;Lls/a;Lls/a;Lls/a;Lls/a;Lls/a;)Lj9/l0;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    invoke-static {p1}, Ll9/a;->a(Ll9/e;)Ll9/e;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    iput-object p1, p0, Lcom/google/firebase/sessions/a$c;->w:Ll9/e;

    .line 250
    .line 251
    invoke-static {p1}, Lj9/j0;->a(Lls/a;)Lj9/j0;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    invoke-static {p1}, Ll9/a;->a(Ll9/e;)Ll9/e;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    iput-object p1, p0, Lcom/google/firebase/sessions/a$c;->x:Ll9/e;

    .line 260
    .line 261
    iget-object p2, p0, Lcom/google/firebase/sessions/a$c;->b:Ll9/e;

    .line 262
    .line 263
    iget-object p3, p0, Lcom/google/firebase/sessions/a$c;->n:Ll9/e;

    .line 264
    .line 265
    iget-object p4, p0, Lcom/google/firebase/sessions/a$c;->j:Ll9/e;

    .line 266
    .line 267
    invoke-static {p2, p3, p4, p1}, Lj9/r;->a(Lls/a;Lls/a;Lls/a;Lls/a;)Lj9/r;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    invoke-static {p1}, Ll9/a;->a(Ll9/e;)Ll9/e;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    iput-object p1, p0, Lcom/google/firebase/sessions/a$c;->y:Ll9/e;

    .line 276
    .line 277
    return-void
.end method


# virtual methods
.method public a()Lcom/google/firebase/sessions/FirebaseSessions;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/sessions/a$c;->y:Ll9/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lls/a;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/firebase/sessions/FirebaseSessions;

    .line 8
    .line 9
    return-object v0
.end method

.method public b()Lj9/k0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/sessions/a$c;->w:Ll9/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lls/a;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lj9/k0;

    .line 8
    .line 9
    return-object v0
.end method
