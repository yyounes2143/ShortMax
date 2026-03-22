.class public abstract Lcom/inmobi/media/z4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I

.field public static final b:Lms/i;

.field public static final c:Lms/i;

.field public static final d:Lms/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    mul-int/lit8 v0, v0, 0x2

    .line 10
    .line 11
    add-int/lit8 v0, v0, 0x1

    .line 12
    .line 13
    sput v0, Lcom/inmobi/media/z4;->a:I

    .line 14
    .line 15
    sget-object v0, Lcom/inmobi/media/y4;->a:Lcom/inmobi/media/y4;

    .line 16
    .line 17
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lcom/inmobi/media/z4;->b:Lms/i;

    .line 22
    .line 23
    sget-object v0, Lcom/inmobi/media/w4;->a:Lcom/inmobi/media/w4;

    .line 24
    .line 25
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lcom/inmobi/media/z4;->c:Lms/i;

    .line 30
    .line 31
    sget-object v0, Lcom/inmobi/media/x4;->a:Lcom/inmobi/media/x4;

    .line 32
    .line 33
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lcom/inmobi/media/z4;->d:Lms/i;

    .line 38
    .line 39
    return-void
.end method
