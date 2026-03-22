package com.amazonaws.auth;

import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.amazonaws.AmazonClientException;
import java.io.IOException;
import java.io.InputStream;
@Deprecated
/* loaded from: classes2.dex */
public class ClasspathPropertiesFileCredentialsProvider implements AWSCredentialsProvider {

    /* renamed from: b  reason: collision with root package name */
    private static String f4923b = "AwsCredentials.properties";

    /* renamed from: a  reason: collision with root package name */
    private final String f4924a;

    public ClasspathPropertiesFileCredentialsProvider() {
        this(f4923b);
    }

    @Override // com.amazonaws.auth.AWSCredentialsProvider
    public AWSCredentials getCredentials() {
        InputStream resourceAsStream = getClass().getResourceAsStream(this.f4924a);
        if (resourceAsStream != null) {
            try {
                return new PropertiesCredentials(resourceAsStream);
            } catch (IOException e10) {
                throw new AmazonClientException("Unable to load AWS credentials from the " + this.f4924a + " file on the classpath", e10);
            }
        }
        throw new AmazonClientException("Unable to load AWS credentials from the " + this.f4924a + " file on the classpath");
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.f4924a + ")";
    }

    public ClasspathPropertiesFileCredentialsProvider(String str) {
        if (str != null) {
            if (!str.startsWith(DomExceptionUtils.SEPARATOR)) {
                this.f4924a = DomExceptionUtils.SEPARATOR + str;
                return;
            }
            this.f4924a = str;
            return;
        }
        throw new IllegalArgumentException("Credentials file path cannot be null");
    }
}
