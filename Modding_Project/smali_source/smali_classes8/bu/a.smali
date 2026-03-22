.class public abstract Lbu/a;
.super Ljava/lang/Object;
.source "AndroidComponents.java"


# static fields
.field private static final c:Lbu/a;


# instance fields
.field public final a:Lau/f;

.field public final b:Lau/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lbu/b;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lbu/b;->b()Lbu/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    sput-object v0, Lbu/a;->c:Lbu/a;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Lau/f;Lau/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lbu/a;->a:Lau/f;

    .line 5
    .line 6
    iput-object p2, p0, Lbu/a;->b:Lau/g;

    .line 7
    .line 8
    return-void
.end method

.method public static a()Z
    .locals 1

    .line 1
    sget-object v0, Lbu/a;->c:Lbu/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public static b()Lbu/a;
    .locals 1

    .line 1
    sget-object v0, Lbu/a;->c:Lbu/a;

    .line 2
    .line 3
    return-object v0
.end method
