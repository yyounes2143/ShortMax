.class public final Lao/a$b;
.super Ljava/lang/Object;
.source "AacUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lao/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/String;


# direct methods
.method private constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lao/a$b;->a:I

    .line 4
    iput p2, p0, Lao/a$b;->b:I

    .line 5
    iput-object p3, p0, Lao/a$b;->c:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(IILjava/lang/String;Lao/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lao/a$b;-><init>(IILjava/lang/String;)V

    return-void
.end method
