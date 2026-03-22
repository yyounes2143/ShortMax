package com.amazonaws.services.s3.internal;

import com.amazonaws.http.HttpResponse;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.services.s3.internal.ObjectRestoreResult;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes2.dex */
public class ObjectRestoreHeaderHandler<T extends ObjectRestoreResult> implements HeaderHandler<T> {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f5925a = Pattern.compile("expiry-date=\"(.*?)\"");

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f5926b = Pattern.compile("ongoing-request=\"(.*?)\"");

    /* renamed from: c  reason: collision with root package name */
    private static final Log f5927c = LogFactory.b(ObjectRestoreHeaderHandler.class);

    private Boolean c(String str) {
        Matcher matcher = f5926b.matcher(str);
        if (matcher.find()) {
            return Boolean.valueOf(Boolean.parseBoolean(matcher.group(1)));
        }
        return null;
    }

    private Date d(String str) {
        Matcher matcher = f5925a.matcher(str);
        if (matcher.find()) {
            try {
                return ServiceUtils.d(matcher.group(1));
            } catch (Exception e10) {
                f5927c.f("Error parsing expiry-date from x-amz-restore header.", e10);
                return null;
            }
        }
        return null;
    }

    @Override // com.amazonaws.services.s3.internal.HeaderHandler
    /* renamed from: b */
    public void a(T t10, HttpResponse httpResponse) {
        String str = httpResponse.c().get("x-amz-restore");
        if (str != null) {
            t10.f(d(str));
            Boolean c10 = c(str);
            if (c10 != null) {
                t10.g(c10.booleanValue());
            }
        }
    }
}
