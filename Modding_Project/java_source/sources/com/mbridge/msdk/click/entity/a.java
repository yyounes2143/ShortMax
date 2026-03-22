package com.mbridge.msdk.click.entity;

import androidx.annotation.NonNull;
/* compiled from: ClickResponseHeader.java */
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public String f25999a;

    /* renamed from: b  reason: collision with root package name */
    public String f26000b;

    /* renamed from: c  reason: collision with root package name */
    public String f26001c;

    /* renamed from: d  reason: collision with root package name */
    public String f26002d;

    /* renamed from: e  reason: collision with root package name */
    public int f26003e;

    /* renamed from: f  reason: collision with root package name */
    public int f26004f;

    /* renamed from: g  reason: collision with root package name */
    public String f26005g;

    /* renamed from: h  reason: collision with root package name */
    public String f26006h;

    public String a() {
        return "statusCode=" + this.f26004f + ", location=" + this.f25999a + ", contentType=" + this.f26000b + ", contentLength=" + this.f26003e + ", contentEncoding=" + this.f26001c + ", referer=" + this.f26002d;
    }

    @NonNull
    public String toString() {
        return "ClickResponseHeader{location='" + this.f25999a + "', contentType='" + this.f26000b + "', contentEncoding='" + this.f26001c + "', referer='" + this.f26002d + "', contentLength=" + this.f26003e + ", statusCode=" + this.f26004f + ", url='" + this.f26005g + "', exception='" + this.f26006h + "'}";
    }
}
