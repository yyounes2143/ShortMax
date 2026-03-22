.class final Lfu/b$e;
.super Ljava/lang/Object;
.source "BuiltInConverters.java"

# interfaces
.implements Lfu/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfu/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lfu/h<",
        "Lokhttp3/ResponseBody;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lfu/b$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lfu/b$e;

    .line 2
    .line 3
    invoke-direct {v0}, Lfu/b$e;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lfu/b$e;->a:Lfu/b$e;

    .line 7
    .line 8
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lokhttp3/ResponseBody;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p1
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lokhttp3/ResponseBody;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lfu/b$e;->a(Lokhttp3/ResponseBody;)Lkotlin/Unit;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
