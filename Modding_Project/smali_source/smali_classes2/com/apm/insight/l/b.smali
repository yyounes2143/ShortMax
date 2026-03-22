.class public final Lcom/apm/insight/l/b;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field private static a:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static a()Ljava/text/DateFormat;
    .locals 3

    .line 1
    sget-object v0, Lcom/apm/insight/l/b;->a:Ljava/text/DateFormat;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 6
    .line 7
    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    .line 8
    .line 9
    .line 10
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/apm/insight/l/b;->a:Ljava/text/DateFormat;

    .line 18
    .line 19
    :cond_0
    sget-object v0, Lcom/apm/insight/l/b;->a:Ljava/text/DateFormat;

    .line 20
    .line 21
    return-object v0
.end method
