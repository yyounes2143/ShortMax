package com.startshorts.androidplayer.bean.fresco;

import android.net.Uri;
import c3.q;
import com.facebook.drawee.generic.RoundingParams;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import y3.m;
import z2.a;
/* compiled from: FrescoConfig.kt */
@Metadata
/* loaded from: classes6.dex */
public final class FrescoConfig {
    private boolean autoPlayAnim;
    private int borderColor;
    private float borderWidth;
    private boolean circleCrop;
    @Nullable
    private a<m> controllerListener;
    private float cornerRadius;
    private boolean cornerTransform;
    @Nullable
    private d4.a iterativeBoxBlurPostProcessor;
    private int ossHeight;
    private int ossWidth;
    private int placeholderResId;
    @Nullable
    private q placeholderScaleType;
    private int resizeHeight;
    private int resizeWidth;
    @Nullable
    private RoundingParams roundingParams;
    @Nullable
    private q scaleType;
    @Nullable
    private Uri uri;
    @Nullable
    private String url;
    private boolean ossProcess = true;
    private int fadeDuration = -1;

    public final boolean getAutoPlayAnim() {
        return this.autoPlayAnim;
    }

    public final int getBorderColor() {
        return this.borderColor;
    }

    public final float getBorderWidth() {
        return this.borderWidth;
    }

    public final boolean getCircleCrop() {
        return this.circleCrop;
    }

    @Nullable
    public final a<m> getControllerListener() {
        return this.controllerListener;
    }

    public final float getCornerRadius() {
        return this.cornerRadius;
    }

    public final boolean getCornerTransform() {
        return this.cornerTransform;
    }

    public final int getFadeDuration() {
        return this.fadeDuration;
    }

    @Nullable
    public final d4.a getIterativeBoxBlurPostProcessor() {
        return this.iterativeBoxBlurPostProcessor;
    }

    public final int getOssHeight() {
        return this.ossHeight;
    }

    public final boolean getOssProcess() {
        return this.ossProcess;
    }

    public final int getOssWidth() {
        return this.ossWidth;
    }

    public final int getPlaceholderResId() {
        return this.placeholderResId;
    }

    @Nullable
    public final q getPlaceholderScaleType() {
        return this.placeholderScaleType;
    }

    public final int getResizeHeight() {
        return this.resizeHeight;
    }

    public final int getResizeWidth() {
        return this.resizeWidth;
    }

    @Nullable
    public final RoundingParams getRoundingParams() {
        return this.roundingParams;
    }

    @Nullable
    public final q getScaleType() {
        return this.scaleType;
    }

    @Nullable
    public final Uri getUri() {
        return this.uri;
    }

    @Nullable
    public final String getUrl() {
        return this.url;
    }

    public final void setAutoPlayAnim(boolean z10) {
        this.autoPlayAnim = z10;
    }

    public final void setBorderColor(int i10) {
        this.borderColor = i10;
    }

    public final void setBorderWidth(float f10) {
        this.borderWidth = f10;
    }

    public final void setCircleCrop(boolean z10) {
        this.circleCrop = z10;
    }

    public final void setControllerListener(@Nullable a<m> aVar) {
        this.controllerListener = aVar;
    }

    public final void setCornerRadius(float f10) {
        this.cornerRadius = f10;
    }

    public final void setCornerTransform(boolean z10) {
        this.cornerTransform = z10;
    }

    public final void setFadeDuration(int i10) {
        this.fadeDuration = i10;
    }

    public final void setIterativeBoxBlurPostProcessor(@Nullable d4.a aVar) {
        this.iterativeBoxBlurPostProcessor = aVar;
    }

    public final void setOssHeight(int i10) {
        this.ossHeight = i10;
    }

    public final void setOssProcess(boolean z10) {
        this.ossProcess = z10;
    }

    public final void setOssWidth(int i10) {
        this.ossWidth = i10;
    }

    public final void setPlaceholderResId(int i10) {
        this.placeholderResId = i10;
    }

    public final void setPlaceholderScaleType(@Nullable q qVar) {
        this.placeholderScaleType = qVar;
    }

    public final void setResizeHeight(int i10) {
        this.resizeHeight = i10;
    }

    public final void setResizeWidth(int i10) {
        this.resizeWidth = i10;
    }

    public final void setRoundingParams(@Nullable RoundingParams roundingParams) {
        this.roundingParams = roundingParams;
    }

    public final void setScaleType(@Nullable q qVar) {
        this.scaleType = qVar;
    }

    public final void setUri(@Nullable Uri uri) {
        this.uri = uri;
    }

    public final void setUrl(@Nullable String str) {
        this.url = str;
    }

    @NotNull
    public String toString() {
        return "FrescoConfig(url=" + this.url + ", uri=" + this.uri + ", ossWidth=" + this.ossWidth + ", ossHeight=" + this.ossHeight + ", resizeWidth=" + this.resizeWidth + ", resizeHeight=" + this.resizeHeight + ", ossProcess=" + this.ossProcess + ", circleCrop=" + this.circleCrop + ", cornerTransform=" + this.cornerTransform + ", cornerRadius=" + this.cornerRadius + ", roundingParams=" + this.roundingParams + ", autoPlayAnim=" + this.autoPlayAnim + ", controllerListener=" + this.controllerListener + ", scaleType=" + this.scaleType + ", placeholderScaleType=" + this.placeholderScaleType + ", placeholderResId=" + this.placeholderResId + ", borderWidth=" + this.borderWidth + ", borderColor=" + this.borderColor + ", iterativeBoxBlurPostProcessor=" + this.iterativeBoxBlurPostProcessor + ", fadeDuration=" + this.fadeDuration + ')';
    }
}
