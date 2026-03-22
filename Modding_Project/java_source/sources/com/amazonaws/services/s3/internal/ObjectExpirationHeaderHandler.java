package com.amazonaws.services.s3.internal;

import com.amazonaws.http.HttpResponse;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.services.s3.internal.ObjectExpirationResult;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes2.dex */
public class ObjectExpirationHeaderHandler<T extends ObjectExpirationResult> implements HeaderHandler<T> {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f5922a = Pattern.compile("expiry-date=\"(.*?)\"");

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f5923b = Pattern.compile("rule-id=\"(.*?)\"");

    /* renamed from: c  reason: collision with root package name */
    private static final Log f5924c = LogFactory.b(ObjectExpirationHeaderHandler.class);

    private Date c(String str) {
        Matcher matcher = f5922a.matcher(str);
        if (matcher.find()) {
            try {
                return ServiceUtils.d(matcher.group(1));
            } catch (Exception e10) {
                f5924c.f("Error parsing expiry-date from x-amz-expiration header.", e10);
                return null;
            }
        }
        return null;
    }

    private String d(String str) {
        Matcher matcher = f5923b.matcher(str);
        if (matcher.find()) {
            return matcher.group(1);
        }
        return null;
    }

    @Override // com.amazonaws.services.s3.internal.HeaderHandler
    /* renamed from: b */
    public void a(T t10, HttpResponse httpResponse) {
        String str = httpResponse.c().get("x-amz-expiration");
        if (str != null) {
            t10.j(c(str));
            t10.i(d(str));
        }
    }
}
