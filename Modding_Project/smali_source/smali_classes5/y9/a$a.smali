.class public final Ly9/a$a;
.super Ljava/lang/Object;
.source "Version.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly9/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Ly9/a$a;->a:I

    .line 5
    .line 6
    iput p2, p0, Ly9/a$a;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Ly9/a$a;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Ly9/a$a;->b:I

    .line 2
    .line 3
    return v0
.end method
