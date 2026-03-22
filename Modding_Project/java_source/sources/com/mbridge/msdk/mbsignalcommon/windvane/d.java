package com.mbridge.msdk.mbsignalcommon.windvane;
/* compiled from: MimeTypeEnum.java */
/* loaded from: classes4.dex */
public enum d {
    JS("js", "application/x-javascript"),
    CSS("css", "text/css"),
    JPG("jpg", "image/jpeg"),
    JPEG("jpep", "image/jpeg"),
    PNG("png", "image/png"),
    WEBP("webp", "image/webp"),
    GIF("gif", "image/gif"),
    HTM("htm", "text/html"),
    HTML("html", "text/html");
    

    /* renamed from: a  reason: collision with root package name */
    private String f28255a;

    /* renamed from: b  reason: collision with root package name */
    private String f28256b;

    d(String str, String str2) {
        this.f28255a = str;
        this.f28256b = str2;
    }

    public String a() {
        return this.f28256b;
    }

    public String b() {
        return this.f28255a;
    }
}
