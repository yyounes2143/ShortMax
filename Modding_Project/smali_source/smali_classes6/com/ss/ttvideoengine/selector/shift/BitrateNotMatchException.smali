.class public Lcom/ss/ttvideoengine/selector/shift/BitrateNotMatchException;
.super Ljava/lang/Exception;
.source "BitrateNotMatchException.java"


# static fields
.field public static final BITRATE_LIST_IS_EMPTY:I = 0x0

.field public static final CALC_BITRATE_IS_NULL:I = 0x3

.field public static final DEFAULT_GEAR_NOT_MATCH:I = 0x4

.field public static final FAIL_TO_SELECT_BY_ML:I = 0x9

.field public static final GEAR_CONFIG_IS_NOT_INIT:I = 0x7

.field public static final GEAR_CONFIG_IS_NULL:I = 0x6

.field public static final INTERSECTION_SET_IS_EMPTY:I = 0x5

.field public static final SHIFT_CHANGE:I = 0x8

.field public static final SHIFT_NOT_MATCH:I = 0x2

.field public static final SPEED_SHIFT_MONITOR_IS_NULL:I = 0x1


# instance fields
.field private final code:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/ss/ttvideoengine/selector/shift/BitrateNotMatchException;->code:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/selector/shift/BitrateNotMatchException;->code:I

    .line 2
    .line 3
    return v0
.end method
