.class public final Lhu/a;
.super Lfu/h$a;
.source "GsonConverterFactory.java"


# instance fields
.field private final a:Lcom/google/gson/Gson;

.field private final b:Z


# direct methods
.method private constructor <init>(Lcom/google/gson/Gson;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfu/h$a;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lhu/a;->a:Lcom/google/gson/Gson;

    .line 5
    .line 6
    iput-boolean p2, p0, Lhu/a;->b:Z

    .line 7
    .line 8
    return-void
.end method

.method public static f()Lhu/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/gson/Gson;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lhu/a;->g(Lcom/google/gson/Gson;)Lhu/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public static g(Lcom/google/gson/Gson;)Lhu/a;
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    new-instance v0, Lhu/a;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v0, p0, v1}, Lhu/a;-><init>(Lcom/google/gson/Gson;Z)V

    .line 7
    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 11
    .line 12
    const-string v0, "gson == null"

    .line 13
    .line 14
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p0
.end method


# virtual methods
.method public c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lfu/d0;)Lfu/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lfu/d0;",
            ")",
            "Lfu/h<",
            "*",
            "Lokhttp3/RequestBody;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lhu/a;->a:Lcom/google/gson/Gson;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    new-instance p2, Lhu/b;

    .line 12
    .line 13
    iget-object p3, p0, Lhu/a;->a:Lcom/google/gson/Gson;

    .line 14
    .line 15
    iget-boolean p4, p0, Lhu/a;->b:Z

    .line 16
    .line 17
    invoke-direct {p2, p3, p1, p4}, Lhu/b;-><init>(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;Z)V

    .line 18
    .line 19
    .line 20
    return-object p2
.end method

.method public d(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lfu/d0;)Lfu/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lfu/d0;",
            ")",
            "Lfu/h<",
            "Lokhttp3/ResponseBody;",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lhu/a;->a:Lcom/google/gson/Gson;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    new-instance p2, Lhu/c;

    .line 12
    .line 13
    iget-object p3, p0, Lhu/a;->a:Lcom/google/gson/Gson;

    .line 14
    .line 15
    invoke-direct {p2, p3, p1}, Lhu/c;-><init>(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;)V

    .line 16
    .line 17
    .line 18
    return-object p2
.end method
