.class public final Lcom/google/zxing/ChecksumException;
.super Lcom/google/zxing/ReaderException;
.source "ChecksumException.java"


# static fields
.field private static final c:Lcom/google/zxing/ChecksumException;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/zxing/ChecksumException;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/zxing/ChecksumException;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/zxing/ChecksumException;->c:Lcom/google/zxing/ChecksumException;

    .line 7
    .line 8
    sget-object v1, Lcom/google/zxing/ReaderException;->b:[Ljava/lang/StackTraceElement;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/zxing/ReaderException;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
