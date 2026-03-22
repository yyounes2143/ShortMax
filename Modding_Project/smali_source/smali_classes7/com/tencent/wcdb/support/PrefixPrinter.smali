.class public Lcom/tencent/wcdb/support/PrefixPrinter;
.super Ljava/lang/Object;
.source "PrefixPrinter.java"

# interfaces
.implements Landroid/util/Printer;


# instance fields
.field private final mPrefix:Ljava/lang/String;

.field private final mPrinter:Landroid/util/Printer;


# direct methods
.method private constructor <init>(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tencent/wcdb/support/PrefixPrinter;->mPrinter:Landroid/util/Printer;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/tencent/wcdb/support/PrefixPrinter;->mPrefix:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static create(Landroid/util/Printer;Ljava/lang/String;)Landroid/util/Printer;
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const-string v0, ""

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lcom/tencent/wcdb/support/PrefixPrinter;

    .line 13
    .line 14
    invoke-direct {v0, p0, p1}, Lcom/tencent/wcdb/support/PrefixPrinter;-><init>(Landroid/util/Printer;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_1
    :goto_0
    return-object p0
.end method


# virtual methods
.method public println(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/support/PrefixPrinter;->mPrinter:Landroid/util/Printer;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/tencent/wcdb/support/PrefixPrinter;->mPrefix:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {v0, p1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
