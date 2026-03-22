.class public interface abstract Lon/c$a;
.super Ljava/lang/Object;
.source "ImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lon/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# static fields
.field public static final a:Lon/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lon/a$c;

    .line 2
    .line 3
    invoke-direct {v0}, Lon/a$c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lon/c$a;->a:Lon/c$a;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public abstract a(Lio/bidmachine/media3/common/a;)I
.end method

.method public abstract b()Lon/c;
.end method
